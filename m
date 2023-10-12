Return-Path: <devicetree+bounces-8081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6077C6A4D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BBB728274C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6B92137A;
	Thu, 12 Oct 2023 10:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oOYVxnL7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90081DDB6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:02:27 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7666A9;
	Thu, 12 Oct 2023 03:02:25 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D887F66071A3;
	Thu, 12 Oct 2023 11:02:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697104944;
	bh=m9OfIh4qBSX/4JsExhLjoNnCHZqhMXqV3D0UdQP9C4I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oOYVxnL7i9TfhrFJngxiI0cjozeNstGQiGVRu9uqDccAPrpSgdmGL7AOUVUHDTJtV
	 fBrxu6JUjG/l8YAlW+RHOSc1beVGcErH73WyvklEfa3hOzYt0wVlic0gZvMW+U4VWA
	 SpJjYneXMzhr+ssMqvJuztqFCFcjz+am2WQPM0hmOhPnBcntINI29IR/6/Z12/5HqR
	 A3iInsIMJXBoFLm9Ff/RxngBfa3uMctrouaqNaPC9Fz7sVQ4dniIf+dXns2CDOQSeO
	 nH9T6hYn3gPeUx2QNRR1QSMcMucaV3LJ/TN67VPBlN9e6mNxMwx1/tEBKsDJd7uK3X
	 RhflYV8jpt3wA==
Message-ID: <dde9719d-e8a9-1bcc-3533-56667aa7ca87@collabora.com>
Date: Thu, 12 Oct 2023 12:02:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2] media: mediatek: vcodec: using encoder device to
 alloc/free encoder memory
Content-Language: en-US
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 =?UTF-8?Q?N=c3=adcolas_F_=2e_R_=2e_A_=2e_Prado?= <nfraprado@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Nathan Hebert <nhebert@chromium.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20231010122010.25937-1-yunfei.dong@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231010122010.25937-1-yunfei.dong@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 10/10/23 14:20, Yunfei Dong ha scritto:
> Need to use encoder device to allocate/free encoder memory when calling
> mtk_vcodec_mem_alloc/mtk_vcodec_mem_free, or leading to below crash log
> when test encoder with decoder device.
> 
> pc : dma_alloc_attrs+0x44/0xf4
> lr : mtk_vcodec_mem_alloc+0x50/0xa4 [mtk_vcodec_common]
> sp : ffffffc0209f3990
> x29: ffffffc0209f39a0 x28: ffffff8024102a18 x27: 0000000000000000
> x26: 0000000000000000 x25: ffffffc00c06e2d8 x24: 0000000000000001
> x23: 0000000000000cc0 x22: 0000000000000010 x21: 0000000000000800
> x20: ffffff8024102a18 x19: 0000000000000000 x18: 0000000000000000
> x17: 0000000000000009 x16: ffffffe389736a98 x15: 0000000000000078
> x14: ffffffe389704434 x13: 0000000000000007 x12: ffffffe38a2b2560
> x11: 0000000000000800 x10: 0000000000000004 x9 : ffffffe331f07484
> x8 : 5400e9aef2395000 x7 : 0000000000000000 x6 : 000000000000003f
> x5 : 0000000000000001 x4 : 0000000000000000 x3 : 0000000000000cc0
> x2 : ffffff8024102a18 x1 : 0000000000000800 x0 : 0000000000000010
> Call trace:
>   dma_alloc_attrs+0x44/0xf4
>   mtk_vcodec_mem_alloc+0x50/0xa4 [mtk_vcodec_common 2819d3d601f3cd06c1f2213ac1b9995134441421]
>   h264_enc_set_param+0x27c/0x378 [mtk_vcodec_enc 772cc3d26c254e8cf54079451ef8d930d2eb4404]
>   venc_if_set_param+0x4c/0x7c [mtk_vcodec_enc 772cc3d26c254e8cf54079451ef8d930d2eb4404]
>   vb2ops_venc_start_streaming+0x1bc/0x328 [mtk_vcodec_enc 772cc3d26c254e8cf54079451ef8d930d2eb4404]
>   vb2_start_streaming+0x64/0x12c
>   vb2_core_streamon+0x114/0x158
>   vb2_streamon+0x38/0x60
>   v4l2_m2m_streamon+0x48/0x88
>   v4l2_m2m_ioctl_streamon+0x20/0x2c
>   v4l_streamon+0x2c/0x38
>   __video_do_ioctl+0x2c4/0x3dc
>   video_usercopy+0x404/0x934
>   video_ioctl2+0x20/0x2c
>   v4l2_ioctl+0x54/0x64
>   v4l2_compat_ioctl32+0x90/0xa34
>   __arm64_compat_sys_ioctl+0x128/0x13c
>   invoke_syscall+0x4c/0x108
>   el0_svc_common+0x98/0x104
>   do_el0_svc_compat+0x28/0x34
>   el0_svc_compat+0x2c/0x74
>   el0t_32_sync_handler+0xa8/0xcc
>   el0t_32_sync+0x194/0x198
> Code: aa0003f6 aa0203f4 aa0103f5 f900
> 
> 'Fixes: 01abf5fbb081c ("media: mediatek: vcodec: separate struct 'mtk_vcodec_ctx'")'
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino@collabora.com>



