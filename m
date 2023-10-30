Return-Path: <devicetree+bounces-12747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1CF7DB59E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F2CCB20A77
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC5CD2F2;
	Mon, 30 Oct 2023 09:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="WqbSJhz3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DF3D505;
	Mon, 30 Oct 2023 09:02:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3140B4;
	Mon, 30 Oct 2023 02:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698656548; x=1730192548;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=i8w9x7dxltFrnpCuSRUPcPt133FkZLGMti/aX/HuhEE=;
  b=WqbSJhz3R3Jxap63rcMr+CHjmZZADHuKPFujS0W4Aqwxar1ApZSQzJjf
   8MC5f0SeYmz5/TCmQ6asAWlaHZAFY9wSJkE5oVQHEWNZM0OXzHkp8qrz+
   /vvICiC1UmkGIDNeGlDrIEScZNaDJ0JlumNVbkstkd66nL3TLMlBfKu2I
   PmdJkh/cFshwfEdspml7qLEDp3rcrIrnENucfva1m9LeGV6oS8kvkr0p6
   lhPRRyEvsTtrhLLriOja/Y3T7LCdtYaGMlgSu14prM/W+ynlim78SBoVf
   qtXIevgrBbgLY1IaNPCdEBmH6mV5VNXd4hfmUejYsAy1v6KzD+QG4di85
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="367383147"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="367383147"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2023 02:02:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="795210656"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="795210656"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by orsmga001.jf.intel.com with SMTP; 30 Oct 2023 02:02:24 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Mon, 30 Oct 2023 11:02:23 +0200
Date: Mon, 30 Oct 2023 11:02:23 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] usb: typec: fsa4480: Add support to swap SBU
 orientation
Message-ID: <ZT9xH7Rz1+oScLKW@kuha.fi.intel.com>
References: <20231020-fsa4480-swap-v2-0-9a7f9bb59873@fairphone.com>
 <20231020-fsa4480-swap-v2-2-9a7f9bb59873@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020-fsa4480-swap-v2-2-9a7f9bb59873@fairphone.com>

On Fri, Oct 20, 2023 at 11:33:19AM +0200, Luca Weiss wrote:
> On some hardware designs the AUX+/- lanes are connected reversed to
> SBU1/2 compared to the expected design by FSA4480.
> 
> Made more complicated, the otherwise compatible Orient-Chip OCP96011
> expects the lanes to be connected reversed compared to FSA4480.
> 
> * FSA4480 block diagram shows AUX+ connected to SBU2 and AUX- to SBU1.
> * OCP96011 block diagram shows AUX+ connected to SBU1 and AUX- to SBU2.
> 
> So if OCP96011 is used as drop-in for FSA4480 then the orientation
> handling in the driver needs to be reversed to match the expectation of
> the OCP96011 hardware.
> 
> Support parsing the data-lanes parameter in the endpoint node to swap
> this in the driver.
> 
> The parse_data_lanes_mapping function is mostly taken from nb7vpq904m.c.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/mux/fsa4480.c | 71 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/drivers/usb/typec/mux/fsa4480.c b/drivers/usb/typec/mux/fsa4480.c
> index e0ee1f621abb..cb7cdf90cb0a 100644
> --- a/drivers/usb/typec/mux/fsa4480.c
> +++ b/drivers/usb/typec/mux/fsa4480.c
> @@ -60,6 +60,7 @@ struct fsa4480 {
>  	unsigned int svid;
>  
>  	u8 cur_enable;
> +	bool swap_sbu_lanes;
>  };
>  
>  static const struct regmap_config fsa4480_regmap_config = {
> @@ -76,6 +77,9 @@ static int fsa4480_set(struct fsa4480 *fsa)
>  	u8 enable = FSA4480_ENABLE_DEVICE;
>  	u8 sel = 0;
>  
> +	if (fsa->swap_sbu_lanes)
> +		reverse = !reverse;
> +
>  	/* USB Mode */
>  	if (fsa->mode < TYPEC_STATE_MODAL ||
>  	    (!fsa->svid && (fsa->mode == TYPEC_MODE_USB2 ||
> @@ -179,12 +183,75 @@ static int fsa4480_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *st
>  	return ret;
>  }
>  
> +enum {
> +	NORMAL_LANE_MAPPING,
> +	INVERT_LANE_MAPPING,
> +};
> +
> +#define DATA_LANES_COUNT	2
> +
> +static const int supported_data_lane_mapping[][DATA_LANES_COUNT] = {
> +	[NORMAL_LANE_MAPPING] = { 0, 1 },
> +	[INVERT_LANE_MAPPING] = { 1, 0 },
> +};
> +
> +static int fsa4480_parse_data_lanes_mapping(struct fsa4480 *fsa)
> +{
> +	struct fwnode_handle *ep;
> +	u32 data_lanes[DATA_LANES_COUNT];
> +	int ret, i, j;
> +
> +	ep = fwnode_graph_get_next_endpoint(dev_fwnode(&fsa->client->dev), NULL);
> +	if (!ep)
> +		return 0;
> +
> +	ret = fwnode_property_read_u32_array(ep, "data-lanes", data_lanes, DATA_LANES_COUNT);
> +	if (ret == -EINVAL)
> +		/* Property isn't here, consider default mapping */
> +		goto out_done;
> +	if (ret) {
> +		dev_err(&fsa->client->dev, "invalid data-lanes property: %d\n", ret);
> +		goto out_error;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(supported_data_lane_mapping); i++) {
> +		for (j = 0; j < DATA_LANES_COUNT; j++) {
> +			if (data_lanes[j] != supported_data_lane_mapping[i][j])
> +				break;
> +		}
> +
> +		if (j == DATA_LANES_COUNT)
> +			break;
> +	}
> +
> +	switch (i) {
> +	case NORMAL_LANE_MAPPING:
> +		break;
> +	case INVERT_LANE_MAPPING:
> +		fsa->swap_sbu_lanes = true;
> +		break;
> +	default:
> +		dev_err(&fsa->client->dev, "invalid data-lanes mapping\n");
> +		ret = -EINVAL;
> +		goto out_error;
> +	}
> +
> +out_done:
> +	ret = 0;
> +
> +out_error:
> +	fwnode_handle_put(ep);
> +
> +	return ret;
> +}
> +
>  static int fsa4480_probe(struct i2c_client *client)
>  {
>  	struct device *dev = &client->dev;
>  	struct typec_switch_desc sw_desc = { };
>  	struct typec_mux_desc mux_desc = { };
>  	struct fsa4480 *fsa;
> +	int ret;
>  
>  	fsa = devm_kzalloc(dev, sizeof(*fsa), GFP_KERNEL);
>  	if (!fsa)
> @@ -193,6 +260,10 @@ static int fsa4480_probe(struct i2c_client *client)
>  	fsa->client = client;
>  	mutex_init(&fsa->lock);
>  
> +	ret = fsa4480_parse_data_lanes_mapping(fsa);
> +	if (ret)
> +		return ret;
> +
>  	fsa->regmap = devm_regmap_init_i2c(client, &fsa4480_regmap_config);
>  	if (IS_ERR(fsa->regmap))
>  		return dev_err_probe(dev, PTR_ERR(fsa->regmap), "failed to initialize regmap\n");
> 
> -- 
> 2.42.0

-- 
heikki

