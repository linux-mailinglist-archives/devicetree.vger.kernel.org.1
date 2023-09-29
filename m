Return-Path: <devicetree+bounces-4666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 728C67B364E
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:05:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1B565283F28
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0117516E3;
	Fri, 29 Sep 2023 15:05:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA963513CC;
	Fri, 29 Sep 2023 15:05:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C90371B8;
	Fri, 29 Sep 2023 08:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695999918; x=1727535918;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DelZcJpWUMjBxW0kniBQFBqsUl9nBj42W0wbOGMzgEg=;
  b=Uat0SRcrzM+CQAGjhVRNGlowINnh88LxEJsTEcMG8o8kj7Za4AISe5Qp
   gdymAJwBgrQa08ThaE4jjLACURb0BkpDLlBy/zwtYVXSuTni5DhdzZc84
   D7IM+PBOzEzTOZHewRuBS20VL6wuMirap8MWxSUYQYxA49PcJMsb5vbta
   6Z3B+q3wbzXcow/l6BXVD2eMmzr2oqH5MpAyjFL/J/khVZM2e3vJ1rstG
   zimJDm7ZTt/3sr3JQBfkmnYLlMSKs/jglUV5gEf/CxCyXL/bgbFiN2vP0
   SfRBYEMYFnbTxfgkDq/zyADDU6w/Xd6tTqnEIDji7TWxBOcBAkV30QKWX
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="361693914"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; 
   d="scan'208";a="361693914"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Sep 2023 08:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="865737509"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; 
   d="scan'208";a="865737509"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga002.fm.intel.com with SMTP; 29 Sep 2023 08:05:14 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Fri, 29 Sep 2023 18:05:13 +0300
Date: Fri, 29 Sep 2023 18:05:13 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Abdel Alkuor <alkuor@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, bryan.odonoghue@linaro.org,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, ryan.eleceng@gmail.com,
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	Abdel Alkuor <abdelalkuor@geotab.com>
Subject: Re: [PATCH v8 08/14] USB: typec: tps6598x: Add interrupt support for
 TPS25750
Message-ID: <ZRbnqUpsoK3v1BRH@kuha.fi.intel.com>
References: <20230929143055.31360-1-alkuor@gmail.com>
 <20230929143055.31360-9-alkuor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929143055.31360-9-alkuor@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 10:30:49AM -0400, Abdel Alkuor wrote:
> From: Abdel Alkuor <abdelalkuor@geotab.com>
> 
> tps25750 event registers structure is different than tps6598x's,
> tps25750 has 11 bytes of events which are read at once where
> tps6598x has two event registers of 8 bytes each which are read
> separately. Likewise MASK event registers. Also, not all events
> are supported in both devices.
> 
> - Create a new handler to accommodate tps25750 interrupt
> - Add device data to of_device_id
> 
> Signed-off-by: Abdel Alkuor <abdelalkuor@geotab.com>
> ---
> Changes in v8:
>   - Populate of_device_id with device data
>   - Change tps->cb to tps->data
>   - Assign matched data to tps data
> Changes in v7:
>   - Add driver name to commit subject
>   - Create tps25750 interrupt handler
> Changes in v6:
>   - Create tipd callbacks factory 
> Changes in v5:
>   - Incorporating tps25750 into tps6598x driver
> 
>  drivers/usb/typec/tipd/core.c | 109 +++++++++++++++++++++++++++++-----
>  1 file changed, 95 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index 32e42798688f..9dc4c3ae5c60 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -18,6 +18,7 @@
>  #include <linux/usb/role.h>
>  #include <linux/workqueue.h>
>  #include <linux/firmware.h>
> +#include <linux/of_device.h>
>  
>  #include "tps6598x.h"
>  #include "trace.h"
> @@ -101,6 +102,10 @@ static const char *const modes[] = {
>  /* Unrecognized commands will be replaced with "!CMD" */
>  #define INVALID_CMD(_cmd_)		(_cmd_ == 0x444d4321)
>  
> +struct tipd_data {
> +	irq_handler_t irq_handler;
> +};
> +
>  struct tps6598x {
>  	struct device *dev;
>  	struct regmap *regmap;
> @@ -118,9 +123,11 @@ struct tps6598x {
>  	enum power_supply_usb_type usb_type;
>  
>  	int wakeup;
> +	u32 status; /* status reg */
>  	u16 pwr_status;
>  	struct delayed_work	wq_poll;
> -	irq_handler_t irq_handler;
> +
> +	const struct tipd_data *data;
>  };
>  
>  static enum power_supply_property tps6598x_psy_props[] = {
> @@ -545,6 +552,64 @@ static irqreturn_t cd321x_interrupt(int irq, void *data)
>  	return IRQ_NONE;
>  }
>  
> +static bool tps6598x_has_role_changed(struct tps6598x *tps, u32 status)
> +{
> +	status ^= tps->status;
> +
> +	return status & (TPS_STATUS_PORTROLE | TPS_STATUS_DATAROLE);
> +}
> +
> +static irqreturn_t tps25750_interrupt(int irq, void *data)
> +{
> +	struct tps6598x *tps = data;
> +	u64 event[2] = { };
> +	u32 status;
> +	int ret;
> +
> +	mutex_lock(&tps->lock);
> +
> +	ret = tps6598x_block_read(tps, TPS_REG_INT_EVENT1, event, 11);
> +	if (ret) {
> +		dev_err(tps->dev, "%s: failed to read events\n", __func__);
> +		goto err_unlock;
> +	}
> +
> +	if (!(event[0] | event[1]))
> +		goto err_unlock;
> +
> +	if (!tps6598x_read_status(tps, &status))
> +		goto err_clear_ints;
> +
> +	if ((event[0] | event[1]) & TPS_REG_INT_POWER_STATUS_UPDATE)
> +		if (!tps6598x_read_power_status(tps))
> +			goto err_clear_ints;
> +
> +	if ((event[0] | event[1]) & TPS_REG_INT_DATA_STATUS_UPDATE)
> +		if (!tps6598x_read_data_status(tps))
> +			goto err_clear_ints;
> +
> +	/*
> +	 * data/port roles could be updated independently after
> +	 * a plug event. Therefore, we need to check
> +	 * for pr/dr status change to set TypeC dr/pr accordingly.
> +	 */
> +	if ((event[0] | event[1]) & TPS_REG_INT_PLUG_EVENT ||
> +	    tps6598x_has_role_changed(tps, status))
> +		tps6598x_handle_plug_event(tps, status);
> +
> +	tps->status = status;
> +
> +err_clear_ints:
> +	tps6598x_block_write(tps, TPS_REG_INT_CLEAR1, event, 11);
> +
> +err_unlock:
> +	mutex_unlock(&tps->lock);
> +
> +	if (event[0] | event[1])
> +		return IRQ_HANDLED;
> +	return IRQ_NONE;
> +}
> +
>  static irqreturn_t tps6598x_interrupt(int irq, void *data)
>  {
>  	struct tps6598x *tps = data;
> @@ -600,7 +665,7 @@ static void tps6598x_poll_work(struct work_struct *work)
>  	struct tps6598x *tps = container_of(to_delayed_work(work),
>  					    struct tps6598x, wq_poll);
>  
> -	tps->irq_handler(0, tps);
> +	tps->data->irq_handler(0, tps);
>  	queue_delayed_work(system_power_efficient_wq,
>  			   &tps->wq_poll, msecs_to_jiffies(POLL_INTERVAL));
>  }
> @@ -967,13 +1032,33 @@ static int tps25750_apply_patch(struct tps6598x *tps)
>  	return 0;
>  };
>  
> +static const struct tipd_data cd321x_data = {
> +	.irq_handler = cd321x_interrupt,
> +};
> +
> +static const struct tipd_data tps6598x_data = {
> +	.irq_handler = tps6598x_interrupt,
> +};
> +
> +static const struct tipd_data tps25750_data = {
> +	.irq_handler = tps25750_interrupt,
> +};
> +
> +static const struct of_device_id tps6598x_of_match[] = {
> +	{ .compatible = "ti,tps6598x", &tps6598x_data},
> +	{ .compatible = "apple,cd321x", &cd321x_data},
> +	{ .compatible = "ti,tps25750", &tps25750_data},
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, tps6598x_of_match);

There is no reason to move that here.

Keep all of those below where tps6598x_of_match was originally.

>  static int tps6598x_probe(struct i2c_client *client)
>  {
> -	irq_handler_t irq_handler = tps6598x_interrupt;
>  	struct device_node *np = client->dev.of_node;
>  	struct typec_capability typec_cap = { };
>  	struct tps6598x *tps;
>  	struct fwnode_handle *fwnode;
> +	const struct of_device_id *match;
>  	u32 status;
>  	u32 conf;
>  	u32 vid;
> @@ -1017,7 +1102,6 @@ static int tps6598x_probe(struct i2c_client *client)
>  			APPLE_CD_REG_INT_DATA_STATUS_UPDATE |
>  			APPLE_CD_REG_INT_PLUG_EVENT;
>  
> -		irq_handler = cd321x_interrupt;
>  	} else {
>  		/* Enable power status, data status and plug event interrupts */
>  		mask1 = TPS_REG_INT_POWER_STATUS_UPDATE |
> @@ -1025,7 +1109,12 @@ static int tps6598x_probe(struct i2c_client *client)
>  			TPS_REG_INT_PLUG_EVENT;
>  	}
>  
> -	tps->irq_handler = irq_handler;
> +	match = of_match_device(tps6598x_of_match, tps->dev);
> +	if (!match)
> +		return -EINVAL;
> +
> +	tps->data = match->data;

        tps->data = device_get_match_data(tps->dev);

>  	/* Make sure the controller has application firmware running */
>  	ret = tps6598x_check_mode(tps);
>  	if (ret < 0)
> @@ -1125,7 +1214,7 @@ static int tps6598x_probe(struct i2c_client *client)
>  
>  	if (client->irq) {
>  		ret = devm_request_threaded_irq(&client->dev, client->irq, NULL,
> -						irq_handler,
> +						tps->data->irq_handler,
>  						IRQF_SHARED | IRQF_ONESHOT,
>  						dev_name(&client->dev), tps);
>  	} else {
> @@ -1231,14 +1320,6 @@ static const struct dev_pm_ops tps6598x_pm_ops = {
>  	SET_SYSTEM_SLEEP_PM_OPS(tps6598x_suspend, tps6598x_resume)
>  };
>  
> -static const struct of_device_id tps6598x_of_match[] = {
> -	{ .compatible = "ti,tps6598x", },
> -	{ .compatible = "apple,cd321x", },
> -	{ .compatible = "ti,tps25750", },
> -	{}
> -};
> -MODULE_DEVICE_TABLE(of, tps6598x_of_match);

static const struct tipd_data cd321x_data = {
	.irq_handler = cd321x_interrupt,
};

static const struct tipd_data tps6598x_data = {
	.irq_handler = tps6598x_interrupt,
};

static const struct tipd_data tps25750_data = {
	.irq_handler = tps25750_interrupt,
};

static const struct of_device_id tps6598x_of_match[] = {
	{ .compatible = "apple,cd321x", &cd321x_data},
	{ .compatible = "ti,tps25750", &tps25750_data},
	{ .compatible = "ti,tps6598x", &tps6598x_data},
	{}
};
MODULE_DEVICE_TABLE(of, tps6598x_of_match);

>  static const struct i2c_device_id tps6598x_id[] = {
>  	{ "tps6598x" },
>  	{ }

thanks,

-- 
heikki

