Return-Path: <devicetree+bounces-7086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 308987BF1CD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 06:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 557C11C2092F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 04:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F31441A;
	Tue, 10 Oct 2023 04:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="NQqJnaec"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D3315AE
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:06:57 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C63B692;
	Mon,  9 Oct 2023 21:06:55 -0700 (PDT)
Received: from [IPV6:2405:201:2033:3002:3848:5d20:59c9:c87c] (unknown [IPv6:2405:201:2033:3002:3848:5d20:59c9:c87c])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4985A3D9;
	Tue, 10 Oct 2023 06:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696910810;
	bh=a6u/THpqVdrMY1xlWYqq7omMOY0DEDqusFhodaF7IhY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NQqJnaec7GRwE1UllqBTRtJwI65qoVSYsDEVh/sErUROuN8gPWW0VX5gdKgKeCiq0
	 s7CVQn0PkNE38KxjmqjQPbkc8qBMrslUxhAvq8JWnaFdj9QPTqjhyf4W29cCrE35g5
	 8MrL9AZmynsVmVF3QXvbmL5cOMynwSGx4zA2x0G8=
Message-ID: <b9eb03cd-41b3-7d1c-d8c0-fb4fc98af8e1@ideasonboard.com>
Date: Tue, 10 Oct 2023 09:36:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/5] media: i2c: imx335: Enable regulator supplies
Content-Language: en-US
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20231010005126.3425444-1-kieran.bingham@ideasonboard.com>
 <20231010005126.3425444-3-kieran.bingham@ideasonboard.com>
From: Umang Jain <umang.jain@ideasonboard.com>
In-Reply-To: <20231010005126.3425444-3-kieran.bingham@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Kieran,

Thank you for the patch.

On 10/10/23 6:21 AM, Kieran Bingham wrote:
> Provide support for enabling and disabling regulator supplies to control
> power to the camera sensor.
>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---
>   drivers/media/i2c/imx335.c | 41 ++++++++++++++++++++++++++++++++++++--
>   1 file changed, 39 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> index ec729126274b..bf12b9b69fce 100644
> --- a/drivers/media/i2c/imx335.c
> +++ b/drivers/media/i2c/imx335.c
> @@ -75,6 +75,19 @@ struct imx335_reg_list {
>   	const struct imx335_reg *regs;
>   };
>   
> +static const char * const imx335_supply_name[] = {
> +	/*
> +	 * Turn on the power supplies so that they rise in order of
> +	 *           1.2v,-> 1.8 -> 2.9v
> +	 * All power supplies should finish rising within 200ms.
> +	 */
> +	"avdd", /* Analog (2.9V) supply */
> +	"ovdd", /* Digital I/O (1.8V) supply */
> +	"dvdd", /* Digital Core (1.2V) supply */
> +};
> +
> +#define IMX335_NUM_SUPPLIES ARRAY_SIZE(imx335_supply_name)
> +
>   /**
>    * struct imx335_mode - imx335 sensor mode structure
>    * @width: Frame width
> @@ -126,6 +139,8 @@ struct imx335 {
>   	struct v4l2_subdev sd;
>   	struct media_pad pad;
>   	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data supplies[IMX335_NUM_SUPPLIES];
> +
>   	struct clk *inclk;
>   	struct v4l2_ctrl_handler ctrl_handler;
>   	struct v4l2_ctrl *link_freq_ctrl;
> @@ -781,6 +796,17 @@ static int imx335_parse_hw_config(struct imx335 *imx335)
>   		return PTR_ERR(imx335->reset_gpio);
>   	}
>   
> +	for (i = 0; i < IMX335_NUM_SUPPLIES; i++)
> +		imx335->supplies[i].supply = imx335_supply_name[i];
> +
> +	ret = devm_regulator_bulk_get(imx335->dev,
> +				      IMX335_NUM_SUPPLIES,
> +				      imx335->supplies);

Shouldn't this go directly in  probe() function ? (Taking IMX219 driver 
as a reference..)
> +	if (ret) {
> +		dev_err(imx335->dev, "Failed to get regulators\n");
> +		return ret;
> +	}
> +
>   	/* Get sensor input clock */
>   	imx335->inclk = devm_clk_get(imx335->dev, NULL);
>   	if (IS_ERR(imx335->inclk)) {
> @@ -859,6 +885,17 @@ static int imx335_power_on(struct device *dev)
>   	struct imx335 *imx335 = to_imx335(sd);
>   	int ret;
>   
> +	ret = regulator_bulk_enable(IMX335_NUM_SUPPLIES,
> +				    imx335->supplies);
> +	if (ret) {
> +		dev_err(dev, "%s: failed to enable regulators\n",
> +			__func__);
> +		return ret;
> +	}
> +
> +	usleep_range(500, 550); /* Tlow */
> +
> +	/* Set XCLR */
>   	gpiod_set_value_cansleep(imx335->reset_gpio, 1);
>   
>   	ret = clk_prepare_enable(imx335->inclk);
> @@ -867,7 +904,7 @@ static int imx335_power_on(struct device *dev)
>   		goto error_reset;
>   	}
>   
> -	usleep_range(20, 22);
> +	usleep_range(20, 22); /* T4 */

It would be help to document this addition of comment in the commit 
message as well.
>   
>   	return 0;
>   
> @@ -889,8 +926,8 @@ static int imx335_power_off(struct device *dev)
>   	struct imx335 *imx335 = to_imx335(sd);
>   
>   	gpiod_set_value_cansleep(imx335->reset_gpio, 0);
> -
>   	clk_disable_unprepare(imx335->inclk);
> +	regulator_bulk_disable(IMX335_NUM_SUPPLIES, imx335->supplies);
>   
>   	return 0;
>   }


