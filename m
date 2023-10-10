Return-Path: <devicetree+bounces-7089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF817BF1E2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 06:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99AA5280F85
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF94442B;
	Tue, 10 Oct 2023 04:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="wBHfOY2G"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B94441A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:16:03 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 627BE92;
	Mon,  9 Oct 2023 21:16:01 -0700 (PDT)
Received: from [IPV6:2405:201:2033:3002:3848:5d20:59c9:c87c] (unknown [IPv6:2405:201:2033:3002:3848:5d20:59c9:c87c])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B01E43D9;
	Tue, 10 Oct 2023 06:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696911358;
	bh=zz6u7A5E/2PEqJdG/2MAXri/p5u+VkgPCjW7Gd4AjXw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=wBHfOY2GcV7ROlbPVNFwk7zhf+EvuPURm33g+6sQ3J46qbNa3uENsKVDeRpio8Vti
	 HPAj1zxb6ip5nDCYuVyAgOb7wIJNVpfmmVT+0K1AENtdY+zPPG1d5j9Q1CwYrbjCsn
	 8KBtZCSMBifFFIUm6WuqDVQfKS9E/1ka0tBjBRDA=
Message-ID: <60a729ac-541a-6e92-34f4-411f78d010ec@ideasonboard.com>
Date: Tue, 10 Oct 2023 09:45:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 4/5] media: i2c: imx335: Fix hblank min/max values
Content-Language: en-US
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc: "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
 <20231010005126.3425444-5-kieran.bingham@ideasonboard.com>
From: Umang Jain <umang.jain@ideasonboard.com>
In-Reply-To: <20231010005126.3425444-5-kieran.bingham@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Kieran

On 10/10/23 6:21 AM, Kieran Bingham wrote:
> The V4L2_CID_HBLANK control is marked as readonly and can only be a
> single value.
>
> Set the minimum and maximum value to match the mode value.
>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

Reviewed-by: Umang Jain <umang.jain@ideasonboard.com>

> ---
>   drivers/media/i2c/imx335.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> index 026777eb362e..1a34b2a43718 100644
> --- a/drivers/media/i2c/imx335.c
> +++ b/drivers/media/i2c/imx335.c
> @@ -1043,8 +1043,8 @@ static int imx335_init_controls(struct imx335 *imx335)
>   	imx335->hblank_ctrl = v4l2_ctrl_new_std(ctrl_hdlr,
>   						&imx335_ctrl_ops,
>   						V4L2_CID_HBLANK,
> -						IMX335_REG_MIN,
> -						IMX335_REG_MAX,
> +						mode->hblank,
> +						mode->hblank,
>   						1, mode->hblank);
>   	if (imx335->hblank_ctrl)
>   		imx335->hblank_ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;


