Return-Path: <devicetree+bounces-23836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7636380C79A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:05:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EE3B2813B1
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 11:05:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC5A2D625;
	Mon, 11 Dec 2023 11:05:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53552D606
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 11:05:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1A52C433C8;
	Mon, 11 Dec 2023 11:05:28 +0000 (UTC)
Message-ID: <ce2110bf-a16a-45ae-979b-7e41be2896cd@xs4all.nl>
Date: Mon, 11 Dec 2023 12:05:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3,04/21] v4l: add documentation for secure memory flag
Content-Language: en-US, nl
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Jeffrey Kardatzke <jkardatzke@google.com>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <nfraprado@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Nathan Hebert <nhebert@chromium.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Yong Wu <yong.wu@mediatek.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Fritz Koenig <frkoenig@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Steve Cho <stevecho@chromium.org>,
 Sumit Semwal <sumit.semwal@linaro.org>, Brian Starkey
 <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T . J . Mercier" <tjmercier@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20231206081538.17056-1-yunfei.dong@mediatek.com>
 <20231206081538.17056-5-yunfei.dong@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20231206081538.17056-5-yunfei.dong@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/12/2023 09:15, Yunfei Dong wrote:
> From: Jeffrey Kardatzke <jkardatzke@google.com>
> 
> Adds documentation for V4L2_MEMORY_FLAG_SECURE.
> 
> Signed-off-by: Jeffrey Kardatzke <jkardatzke@google.com>
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> ---
>  Documentation/userspace-api/media/v4l/buffer.rst | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/userspace-api/media/v4l/buffer.rst b/Documentation/userspace-api/media/v4l/buffer.rst
> index 52bbee81c080..a5a7d1c72d53 100644
> --- a/Documentation/userspace-api/media/v4l/buffer.rst
> +++ b/Documentation/userspace-api/media/v4l/buffer.rst
> @@ -696,7 +696,7 @@ enum v4l2_memory
>  
>  .. _memory-flags:
>  
> -Memory Consistency Flags
> +Memory Flags
>  ------------------------
>  
>  .. raw:: latex
> @@ -728,6 +728,12 @@ Memory Consistency Flags
>  	only if the buffer is used for :ref:`memory mapping <mmap>` I/O and the
>  	queue reports the :ref:`V4L2_BUF_CAP_SUPPORTS_MMAP_CACHE_HINTS
>  	<V4L2-BUF-CAP-SUPPORTS-MMAP-CACHE-HINTS>` capability.
> +    * .. _`V4L2-MEMORY-FLAG-SECURE`:
> +
> +      - ``V4L2_MEMORY_FLAG_SECURE``
> +      - 0x00000002
> +      - DMA bufs passed into the queue will be validated to ensure they were
> +	allocated from a secure dma-heap.

Hmm, that needs a bit more work. How about:

- The queued buffers are expected to be in secure memory. If not, an error will be
  returned. This flag can only be used with ``V4L2_MEMORY_DMABUF``. Typically
  secure buffers are allocated using a secure dma-heap. This flag can only be
  specified if the ``V4L2_BUF_CAP_SUPPORTS_SECURE_MEM`` is set.

In addition, the title of this table is currently "Memory Consistency Flags": that
should be renamed to "Memory Flags".

Regards,

	Hans

>  
>  .. raw:: latex
>  


