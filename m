Return-Path: <devicetree+bounces-5351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECFB7B6067
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 947BA1C20840
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 05:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A451875;
	Tue,  3 Oct 2023 05:30:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B62EC8;
	Tue,  3 Oct 2023 05:30:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7D2B3;
	Mon,  2 Oct 2023 22:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696311042; x=1727847042;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=x4jfcPTFWj3UkIpU7HwQwPnJkJJI3OnmPsTQihXaJAo=;
  b=BCM++IahR9M/HttebOx24RJT5zE5xH8vsC+wfq1y4sFo0+YpZnKTaiqW
   5cGLTeBKB6tg6xWvgv73XwUsJ2rsAzAITqyb9azEQz1B8ZPOCKYVd4KvK
   gFe7hW++2OxiTXhvAxyCF37XYLg+2XSEHv+tHGq0fDESfTGkLUdx4Qk2z
   tMChYGsbT3+SQLHLZ48sLgcrAnyckcwh9f0TQGcmCP/sLoiISaIShylDd
   //yiwoEQfa5PSNe24Nh7mGUlm3+BvSgsrMXOcctLPvsijlS1VaZHdHzzq
   WFYL0fGPs54ASPgDtcjEl2/Wjo7o1rZ/8ejHwBn9pY3DfQUCVHKDLkCRB
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="469069296"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="469069296"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2023 22:30:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997863812"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; 
   d="scan'208";a="997863812"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga006.fm.intel.com with SMTP; 02 Oct 2023 22:30:32 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Tue, 03 Oct 2023 08:30:31 +0300
Date: Tue, 3 Oct 2023 08:30:31 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Abdel Alkuor <alkuor@gmail.com>
Cc: krzysztof.kozlowski+dt@linaro.org, bryan.odonoghue@linaro.org,
	gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, ryan.eleceng@gmail.com,
	robh+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	Abdel Alkuor <abdelalkuor@geotab.com>
Subject: Re: [PATCH v9 04/14] USB: typec: tps6598x: Load TPS25750 patch bundle
Message-ID: <ZRum9/K9oFeLpVBd@kuha.fi.intel.com>
References: <20231001081134.37101-1-alkuor@gmail.com>
 <20231001081134.37101-5-alkuor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001081134.37101-5-alkuor@gmail.com>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Oct 01, 2023 at 04:11:24AM -0400, Abdel Alkuor wrote:
> From: Abdel Alkuor <abdelalkuor@geotab.com>
> 
> TPS25750 controller requires a binary to be loaded with a configuration
> binary by an EEPROM or a host.
> 
> Appling a patch bundling using a host is implemented based on the flow
> diagram pg.62 in TPS25750 host interface manual.
> https://www.ti.com/lit/ug/slvuc05a/slvuc05a.pdf
> 
> The flow diagram can be summarized as following:
> - Start the patch loading sequence with patch bundle information by
>   executing PBMs
> - Write the whole patch at once
> - When writing the patch fails, execute PBMe which instructs the PD controller
>   to end the patching process
> - After writing the patch successfully, execute PBMc which verifies the patch
>   integrity and applies the patch internally
> - Wait for the device to switch into APP mode (normal operation)
> 
> The execuation flow diagram polls the events register and then polls the
> corresponding register related to the event as well before advancing to the next
> state. Polling the events register is a redundant step, in this implementation
> only the corresponding register related to the event is polled.
> 
> Signed-off-by: Abdel Alkuor <abdelalkuor@geotab.com>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> Changes in v9:
>   - No changes
> Changes in v8:
>   - Return mode when mode is checked
>   - Use device_is_compatible instead of of_device_is_compatible
> Changes in v7:
>   - Add driver name to commit subject
> Changes in v6:
>   - Don't check VID for tps25750 as the VID register doesn't exist
>   - Remove is_tps25750 flag from tps6598x struct
>   - Get patch address from reg property
> Changes in v5:
>   - Incorporating tps25750 into tps6598x driver
>  drivers/usb/typec/tipd/core.c | 263 ++++++++++++++++++++++++++++++++--
>  1 file changed, 255 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/typec/tipd/core.c b/drivers/usb/typec/tipd/core.c
> index c5bbf03cb74a..2e7b9eafaf04 100644
> --- a/drivers/usb/typec/tipd/core.c
> +++ b/drivers/usb/typec/tipd/core.c
> @@ -17,6 +17,7 @@
>  #include <linux/usb/typec_altmode.h>
>  #include <linux/usb/role.h>
>  #include <linux/workqueue.h>
> +#include <linux/firmware.h>
>  
>  #include "tps6598x.h"
>  #include "trace.h"
> @@ -43,6 +44,23 @@
>  /* TPS_REG_SYSTEM_CONF bits */
>  #define TPS_SYSCONF_PORTINFO(c)		((c) & 7)
>  
> +/*
> + * BPMs task timeout, recommended 5 seconds
> + * pg.48 TPS2575 Host Interface Technical Reference
> + * Manual (Rev. A)
> + * https://www.ti.com/lit/ug/slvuc05a/slvuc05a.pdf
> + */
> +#define TPS_BUNDLE_TIMEOUT	0x32
> +
> +/* BPMs return code */
> +#define TPS_TASK_BPMS_INVALID_BUNDLE_SIZE	0x4
> +#define TPS_TASK_BPMS_INVALID_SLAVE_ADDR	0x5
> +#define TPS_TASK_BPMS_INVALID_TIMEOUT		0x6
> +
> +/* PBMc data out */
> +#define TPS_PBMC_RC	0 /* Return code */
> +#define TPS_PBMC_DPCS	2 /* device patch complete status */
> +
>  enum {
>  	TPS_PORTINFO_SINK,
>  	TPS_PORTINFO_SINK_ACCESSORY,
> @@ -595,13 +613,15 @@ static int tps6598x_check_mode(struct tps6598x *tps)
>  	if (ret)
>  		return ret;
>  
> -	switch (match_string(modes, ARRAY_SIZE(modes), mode)) {
> +	ret = match_string(modes, ARRAY_SIZE(modes), mode);
> +
> +	switch (ret) {
>  	case TPS_MODE_APP:
>  	case TPS_MODE_PTCH:
> -		return 0;
> +		return ret;
>  	case TPS_MODE_BOOT:
>  		dev_warn(tps->dev, "dead-battery condition\n");
> -		return 0;
> +		return ret;
>  	case TPS_MODE_BIST:
>  	case TPS_MODE_DISC:
>  	default:
> @@ -711,6 +731,213 @@ static int devm_tps6598_psy_register(struct tps6598x *tps)
>  	return PTR_ERR_OR_ZERO(tps->psy);
>  }
>  
> +static int
> +tps25750_write_firmware(struct tps6598x *tps,
> +			u8 bpms_addr, const u8 *data, size_t len)
> +{
> +	struct i2c_client *client = to_i2c_client(tps->dev);
> +	int ret;
> +	u8 slave_addr;
> +	int timeout;
> +
> +	slave_addr = client->addr;
> +	timeout = client->adapter->timeout;
> +
> +	/*
> +	 * binary configuration size is around ~16Kbytes
> +	 * which might take some time to finish writing it
> +	 */
> +	client->adapter->timeout = msecs_to_jiffies(5000);
> +	client->addr = bpms_addr;
> +
> +	ret = regmap_raw_write(tps->regmap, data[0], &data[1], len - 1);
> +
> +	client->addr = slave_addr;
> +	client->adapter->timeout = timeout;
> +
> +	return ret;
> +}
> +
> +static int
> +tps25750_exec_pbms(struct tps6598x *tps, u8 *in_data, size_t in_len)
> +{
> +	int ret;
> +	u8 rc;
> +
> +	ret = tps6598x_exec_cmd_tmo(tps, "PBMs", in_len, in_data,
> +				    sizeof(rc), &rc, 4000, 0);
> +	if (ret)
> +		return ret;
> +
> +	switch (rc) {
> +	case TPS_TASK_BPMS_INVALID_BUNDLE_SIZE:
> +		dev_err(tps->dev, "%s: invalid fw size\n", __func__);
> +		return -EINVAL;
> +	case TPS_TASK_BPMS_INVALID_SLAVE_ADDR:
> +		dev_err(tps->dev, "%s: invalid slave address\n", __func__);
> +		return -EINVAL;
> +	case TPS_TASK_BPMS_INVALID_TIMEOUT:
> +		dev_err(tps->dev, "%s: timed out\n", __func__);
> +		return -ETIMEDOUT;
> +	default:
> +		break;
> +	}
> +
> +	return 0;
> +}
> +
> +static int tps25750_abort_patch_process(struct tps6598x *tps)
> +{
> +	int ret;
> +
> +	ret = tps6598x_exec_cmd(tps, "PBMe", 0, NULL, 0, NULL);
> +	if (ret)
> +		return ret;
> +
> +	ret = tps6598x_check_mode(tps);
> +	if (ret != TPS_MODE_PTCH)
> +		dev_err(tps->dev, "failed to switch to \"PTCH\" mode\n");
> +
> +	return ret;
> +}
> +
> +static int tps25750_start_patch_burst_mode(struct tps6598x *tps)
> +{
> +	int ret;
> +	const struct firmware *fw;
> +	const char *firmware_name;
> +	struct {
> +		u32 fw_size;
> +		u8 addr;
> +		u8 timeout;
> +	} __packed bpms_data;
> +	u32 addr;
> +	struct device_node *np = tps->dev->of_node;
> +
> +	ret = device_property_read_string(tps->dev, "firmware-name",
> +					  &firmware_name);
> +	if (ret)
> +		return ret;
> +
> +	ret = request_firmware(&fw, firmware_name, tps->dev);
> +	if (ret) {
> +		dev_err(tps->dev, "failed to retrieve \"%s\"\n", firmware_name);
> +		return ret;
> +	}
> +
> +	if (fw->size == 0) {
> +		ret = -EINVAL;
> +		goto release_fw;
> +	}
> +
> +	ret = of_property_match_string(np, "reg-names", "patch-address");
> +	if (ret < 0) {
> +		dev_err(tps->dev, "failed to get patch-address %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = of_property_read_u32_index(np, "reg", ret, &addr);
> +	if (ret)
> +		return ret;
> +
> +	if (addr == 0 || (addr >= 0x20 && addr <= 0x23)) {
> +		dev_err(tps->dev, "wrong patch address %u\n", addr);
> +		return -EINVAL;
> +	}
> +
> +	bpms_data.addr = (u8)addr;
> +	bpms_data.fw_size = fw->size;
> +	bpms_data.timeout = TPS_BUNDLE_TIMEOUT;
> +
> +	ret = tps25750_exec_pbms(tps, (u8 *)&bpms_data, sizeof(bpms_data));
> +	if (ret)
> +		goto release_fw;
> +
> +	ret = tps25750_write_firmware(tps, bpms_data.addr, fw->data, fw->size);
> +	if (ret) {
> +		dev_err(tps->dev, "Failed to write patch %s of %zu bytes\n",
> +			firmware_name, fw->size);
> +		goto release_fw;
> +	}
> +
> +	/*
> +	 * A delay of 500us is required after the firmware is written
> +	 * based on pg.62 in tps6598x Host Interface Technical
> +	 * Reference Manual
> +	 * https://www.ti.com/lit/ug/slvuc05a/slvuc05a.pdf
> +	 */
> +	udelay(500);
> +
> +release_fw:
> +	release_firmware(fw);
> +
> +	return ret;
> +}
> +
> +static int tps25750_complete_patch_process(struct tps6598x *tps)
> +{
> +	int ret;
> +	u8 out_data[40];
> +	u8 dummy[2] = { };
> +
> +	/*
> +	 * Without writing something to DATA_IN, this command would
> +	 * return an error
> +	 */
> +	ret = tps6598x_exec_cmd_tmo(tps, "PBMc", sizeof(dummy), dummy,
> +				    sizeof(out_data), out_data, 2000, 20);
> +	if (ret)
> +		return ret;
> +
> +	if (out_data[TPS_PBMC_RC]) {
> +		dev_err(tps->dev,
> +			"%s: pbmc failed: %u\n", __func__,
> +			out_data[TPS_PBMC_RC]);
> +		return -EIO;
> +	}
> +
> +	if (out_data[TPS_PBMC_DPCS]) {
> +		dev_err(tps->dev,
> +			"%s: failed device patch complete status: %u\n",
> +			__func__, out_data[TPS_PBMC_DPCS]);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int tps25750_apply_patch(struct tps6598x *tps)
> +{
> +	int ret;
> +	unsigned long timeout;
> +
> +	ret = tps25750_start_patch_burst_mode(tps);
> +	if (ret) {
> +		tps25750_abort_patch_process(tps);
> +		return ret;
> +	}
> +
> +	ret = tps25750_complete_patch_process(tps);
> +	if (ret)
> +		return ret;
> +
> +	timeout = jiffies + msecs_to_jiffies(1000);
> +
> +	do {
> +		ret = tps6598x_check_mode(tps);
> +		if (ret < 0)
> +			return ret;
> +
> +		if (time_is_before_jiffies(timeout))
> +			return -ETIMEDOUT;
> +
> +	} while (ret != TPS_MODE_APP);
> +
> +	dev_info(tps->dev, "controller switched to \"APP\" mode\n");
> +
> +	return 0;
> +};
> +
>  static int tps6598x_probe(struct i2c_client *client)
>  {
>  	irq_handler_t irq_handler = tps6598x_interrupt;
> @@ -723,6 +950,7 @@ static int tps6598x_probe(struct i2c_client *client)
>  	u32 vid;
>  	int ret;
>  	u64 mask1;
> +	bool is_tps25750;
>  
>  	tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
>  	if (!tps)
> @@ -735,9 +963,12 @@ static int tps6598x_probe(struct i2c_client *client)
>  	if (IS_ERR(tps->regmap))
>  		return PTR_ERR(tps->regmap);
>  
> -	ret = tps6598x_read32(tps, TPS_REG_VID, &vid);
> -	if (ret < 0 || !vid)
> -		return -ENODEV;
> +	is_tps25750 = device_is_compatible(tps->dev, "ti,tps25750");
> +	if (!is_tps25750) {
> +		ret = tps6598x_read32(tps, TPS_REG_VID, &vid);
> +		if (ret < 0 || !vid)
> +			return -ENODEV;
> +	}
>  
>  	/*
>  	 * Checking can the adapter handle SMBus protocol. If it can not, the
> @@ -768,12 +999,18 @@ static int tps6598x_probe(struct i2c_client *client)
>  	tps->irq_handler = irq_handler;
>  	/* Make sure the controller has application firmware running */
>  	ret = tps6598x_check_mode(tps);
> -	if (ret)
> +	if (ret < 0)
>  		return ret;
>  
> +	if (is_tps25750 && ret == TPS_MODE_PTCH) {
> +		ret = tps25750_apply_patch(tps);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = tps6598x_write64(tps, TPS_REG_INT_MASK1, mask1);
>  	if (ret)
> -		return ret;
> +		goto err_reset_controller;
>  
>  	ret = tps6598x_read32(tps, TPS_REG_STATUS, &status);
>  	if (ret < 0)
> @@ -893,6 +1130,10 @@ static int tps6598x_probe(struct i2c_client *client)
>  	fwnode_handle_put(fwnode);
>  err_clear_mask:
>  	tps6598x_write64(tps, TPS_REG_INT_MASK1, 0);
> +err_reset_controller:
> +	/* Reset PD controller to remove any applied patch */
> +	if (is_tps25750)
> +		tps6598x_exec_cmd_tmo(tps, "GAID", 0, NULL, 0, NULL, 2000, 0);
>  	return ret;
>  }
>  
> @@ -903,9 +1144,14 @@ static void tps6598x_remove(struct i2c_client *client)
>  	if (!client->irq)
>  		cancel_delayed_work_sync(&tps->wq_poll);
>  
> +	devm_free_irq(tps->dev, client->irq, tps);
>  	tps6598x_disconnect(tps, 0);
>  	typec_unregister_port(tps->port);
>  	usb_role_switch_put(tps->role_sw);
> +
> +	/* Reset PD controller to remove any applied patch */
> +	if (device_is_compatible(tps->dev, "ti,tps25750"))
> +		tps6598x_exec_cmd_tmo(tps, "GAID", 0, NULL, 0, NULL, 2000, 0);
>  }
>  
>  static int __maybe_unused tps6598x_suspend(struct device *dev)
> @@ -948,6 +1194,7 @@ static const struct dev_pm_ops tps6598x_pm_ops = {
>  static const struct of_device_id tps6598x_of_match[] = {
>  	{ .compatible = "ti,tps6598x", },
>  	{ .compatible = "apple,cd321x", },
> +	{ .compatible = "ti,tps25750", },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, tps6598x_of_match);
> -- 
> 2.34.1

-- 
heikki

