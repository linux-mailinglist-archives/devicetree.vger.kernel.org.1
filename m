Return-Path: <devicetree+bounces-127388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 778249E54CF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 13:01:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8F2618839F5
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1FCB21773D;
	Thu,  5 Dec 2024 12:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N/wNEi3P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DDB217704
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 12:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733400048; cv=none; b=I1Jy9CBDqREeB4UYSpF4KgG1UQpRfioDflBFhrPTUBe82JMjLB5pZpIihdKTpKZ8pK22oCREOvPQHO/8yoHUP/aaeIkDk4G/2heim7Ac3oPIydnhJi63V2Zy2AwhAykA+GAj2qTjg8APbQBJadhN6awF2kwlo0z65goVeAQwXY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733400048; c=relaxed/simple;
	bh=jy5l1IRkBdan3YFDFpWKY5RXf6f8n9rw8iF2OYMlFTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJnFaZ4vmdd+NcyPIWyDQ5CmAdZ2omIUWbCwncemBqFUSf7dyTM/oS6ii8zaZtyYZUlnv4JZMT5EJCz8bP1Qi79qCa+BNkBQhe4rBJV3EiL4ZMRCHN6JY8mkkOSOATNL/TA9Fz9pYkk9DKhwVnZNx9gcI0RvL1Gthp/SBmJ8MBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N/wNEi3P; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so915870e87.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 04:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733400045; x=1734004845; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z6suNLAdL6iq6mhldu8rnJx9YHc+2BLsoEolOU1ixOc=;
        b=N/wNEi3P4QXBKNP+OYRy85E7PFvhnI6Jt6ztyTf7eIchZEduyHz0zWB+Ot5N8z48PA
         MuZKGoaRBiD61ZX2sbzZia60/fivIxnmbAts++MdwYQ9nfRFZ6+kg2tLTrhHy1hjT7ht
         FzdlrDD8r2g9eyszn2FfZkNZ2f+nQJAxd8Vg6cSIc8aSZKRe9uFbiiAm35bKIa3DKz+P
         y8OwP7ry5kIfat9a5LdVBmZnTbabgj8nB5p21SZjV8z5HtfFo7RAEdFl0u9NyeRQ1bXe
         P2n0S+SgCwcurJ3tl1XxEVaHK/TIjcczZ7xxlZon46n5EBghSlgMK9C9PhnGHhBTLxsB
         6zgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733400045; x=1734004845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6suNLAdL6iq6mhldu8rnJx9YHc+2BLsoEolOU1ixOc=;
        b=slFvEyvy+FDOd/focSl1IX+Okj+S02mBNzuxquRVjjChtas+/9PVD4qX/pzAuBRq6i
         JoDZCFWgd9Iu1ACXG2nN611Bgk23RxnRvpbmvvLzicYaCOkwpz79BwIdgyE+8PsvqvMt
         xy2bxbwilCOXIVpRawXKUtN73M1xlqfFfo+6jvn2YnGqmmjnjsVjamC5QJYpKG0/MsBM
         EzAmdiZpj964nfB7eeogyRRd9fjt6+VoYeFK4rHRAritlrtJn82upUOptpDlpocg8FDA
         lew1yUssT39lTQBqm8z9vbJGZcAblom5IMf8z4Xiv264vjXW6gbFk/2xs1nPxVIaYCjL
         9pCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZSadpskDfazikqid8GU26kFplLrE45ol51xht7hdZTf5n/O6yFxO6i4zbOokahj/45lPNdeDQ8BNl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2HCZq75CLigJmVvZAbURHMVd4WJbftjXAgNJVYJONaChXZMi/
	Bx0i7Wb3IEB5Bjf9HBWaocXE6ZBVglRtpZNeJDamQWrQniBQWCwTHdYHSqmdXJo=
X-Gm-Gg: ASbGncu36SqVPJ1O9+hzQLTAci4mdtmVBrjpUEoTfe2nro94vThd61mPBmwRwJ8/TED
	I0lc74mc1Wi2iXiag4kW8wfzCtFTh6lSgxGqAEqYabAVEJA/4zGenV1TkY3e1v4Gfb2nJBAd9r3
	1uZE8yfDzF23xCr/uTJVTSRzMKJcLhZZFgyGusLzJeGiUnfDp/Xo9337VHmY+ik9JvFDvR71q95
	akgV8yLHVqPARrsngMLi8/Sv5LOTAsC2pqFAKfJXG4cjWj19AWPG9k1JvG1DFr67lxoIko/Sf7G
	4K9NBtiiDy2JLsZzMjPF/eTfF+0S3Q==
X-Google-Smtp-Source: AGHT+IH/jMWnHzHDtVHudJFI//O37YyqyI3jX/kVCBVp/uMI+flmxz6qJJl5fiLYeUGJIvg9QO2hAQ==
X-Received: by 2002:a05:6512:1324:b0:53e:21c7:dcd0 with SMTP id 2adb3069b0e04-53e21c7dd44mr1221662e87.17.1733400042445;
        Thu, 05 Dec 2024 04:00:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ba710sm219360e87.140.2024.12.05.04.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 04:00:41 -0800 (PST)
Date: Thu, 5 Dec 2024 14:00:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cheng Jiang <quic_chejiang@quicinc.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Rocky Liao <quic_rjliao@quicinc.com>, 
	linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_jiaymao@quicinc.com, quic_shuaz@quicinc.com, 
	quic_zijuhu@quicinc.com, quic_mohamull@quicinc.com
Subject: Re: [PATCH v3 2/3] Bluetooth: qca: Expand firmware-name to load
 specific nvm and rampatch
Message-ID: <w7r4itwyrh3jva3rx3kmsm4kqtawqkgkneqrlin4hpjkqb3deo@2qmjd3ijzqn3>
References: <20241205102213.1281865-1-quic_chejiang@quicinc.com>
 <20241205102213.1281865-3-quic_chejiang@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205102213.1281865-3-quic_chejiang@quicinc.com>

On Thu, Dec 05, 2024 at 06:22:12PM +0800, Cheng Jiang wrote:
> The firmware-name property has been expanded to specify the names of NVM
> and rampatch firmware for certain chips, such as the QCA6698 Bluetooth
> chip. Although it shares the same IP core as the WCN6855, the QCA6698
> has different RF components and RAM sizes, necessitating new firmware
> files. This change allows for the configuration of NVM and rampatch in
> DT.
> 
> Different connectivity boards may be attached to the same platform. For
> example, QCA6698-based boards can support either a two-antenna or
> three-antenna solution, both of which work on the sa8775p-ride platform.
> Due to differences in connectivity boards and variations in RF
> performance from different foundries, different NVM configurations are
> used based on the board ID.

Two separate commits, one for NVM, another one for RAM patch.

> 
> Therefore, in the firmware-name property, if the NVM file has an
> extension, the NVM file will be used. Otherwise, the system will first
> try the .bNN (board ID) file, and if that fails, it will fall back to
> the .bin file.
> 
> Possible configurations:
> firmware-name = "QCA6698/hpnv21.bin", "QCA6698/hpbtfw21.tlv";
> firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
> firmware-name = "QCA6698/hpnv21.bin";
> 
> Signed-off-by: Cheng Jiang <quic_chejiang@quicinc.com>
> ---
>  drivers/bluetooth/btqca.c   | 154 ++++++++++++++++++++++++++----------
>  drivers/bluetooth/btqca.h   |   5 +-
>  drivers/bluetooth/hci_qca.c |  21 ++++-
>  3 files changed, 134 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
> index dfbbac922..e8b89b8cc 100644
> --- a/drivers/bluetooth/btqca.c
> +++ b/drivers/bluetooth/btqca.c
> @@ -272,6 +272,31 @@ int qca_send_pre_shutdown_cmd(struct hci_dev *hdev)
>  }
>  EXPORT_SYMBOL_GPL(qca_send_pre_shutdown_cmd);
>  
> +static int qca_get_alt_nvm_path(char *path, size_t max_size)

int is usually for errors, the code suggests bool return type.

> +{
> +	char fwname[64];
> +	const char *suffix;
> +
> +	suffix = strrchr(path, '.');
> +
> +	if (!suffix)
> +		return 0;
> +
> +	strscpy(fwname, path, strlen(path));

64 bytes ought to be enough for anybody, correct?

> +	fwname[suffix - path] = 0;

with path = "qcom/sc7180/Oh.My.Device/name" this is broken.

> +
> +	snprintf(fwname, sizeof(fwname), "%s.bin", fwname);
> +
> +	/* If nvm file is already the default one, return false to
> +	 * skip the retry.
> +	 */
> +	if (strcmp(fwname, path) == 0)
> +		return 0;
> +
> +	snprintf(path, max_size, "%s", fwname);
> +	return 1;
> +}
> +
>  static int qca_tlv_check_data(struct hci_dev *hdev,
>  			       struct qca_fw_config *config,
>  			       u8 *fw_data, size_t fw_size,
> @@ -564,6 +589,19 @@ static int qca_download_firmware(struct hci_dev *hdev,
>  					   config->fwname, ret);
>  				return ret;
>  			}
> +		}
> +		/* For nvm, if desired nvm file is not present and it's not the
> +		 * default nvm file(ends with .bin), try to load the default nvm.
> +		 */
> +		else if (config->type == TLV_TYPE_NVM &&
> +			 qca_get_alt_nvm_path(config->fwname, sizeof(config->fwname))) {

Please, don't rewrite the config. The file may be not present now, but
it will reappear later (e.g. when rootfs gets mounted).

> +			bt_dev_info(hdev, "QCA Downloading %s", config->fwname);
> +			ret = request_firmware(&fw, config->fwname, &hdev->dev);
> +			if (ret) {
> +				bt_dev_err(hdev, "QCA Failed to request file: %s (%d)",
> +					   config->fwname, ret);
> +				return ret;
> +			}
>  		} else {
>  			bt_dev_err(hdev, "QCA Failed to request file: %s (%d)",
>  				   config->fwname, ret);
> @@ -730,15 +768,38 @@ static inline void qca_get_nvm_name_generic(struct qca_fw_config *cfg,
>  			 "qca/%snv%02x.b%02x", stem, rom_ver, bid);
>  }
>  
> +static void qca_get_nvm_name_by_board(char *fwname, size_t max_size,
> +		const char *firmware_name, struct qca_btsoc_version ver,
> +		enum qca_btsoc_type soc_type, u16 bid)
> +{
> +	const char *variant;
> +
> +	/* Set the variant to empty by default */
> +	variant = "";
> +	/* hsp gf chip */
> +	if (soc_type == QCA_WCN6855) {
> +		if ((le32_to_cpu(ver.soc_id) & QCA_HSP_GF_SOC_MASK) == QCA_HSP_GF_SOC_ID)
> +			variant = "g";

Didn't you get the 'set but unused' here?

> +	}
> +
> +	if (bid == 0x0)

0x0 or 0xff?

> +		snprintf(fwname, max_size, "qca/%s.bin", firmware_name);
> +	else if (bid & 0xff00)
> +		snprintf(fwname, max_size, "qca/%s.b%x", firmware_name, bid);

Doesn't ".b%02x" work in this case too?

> +	else
> +		snprintf(fwname, max_size, "qca/%s.b%02x", firmware_name, bid);
> +}
> +
>  int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  		   enum qca_btsoc_type soc_type, struct qca_btsoc_version ver,
> -		   const char *firmware_name)
> +		   const char *firmware_name, const char *rampatch_name)
>  {
>  	struct qca_fw_config config = {};
>  	int err;
>  	u8 rom_ver = 0;
>  	u32 soc_ver;
>  	u16 boardid = 0;
> +	const char *suffix;
>  
>  	bt_dev_dbg(hdev, "QCA setup on UART");
>  
> @@ -761,44 +822,48 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  
>  	/* Download rampatch file */
>  	config.type = TLV_TYPE_PATCH;
> -	switch (soc_type) {
> -	case QCA_WCN3990:
> -	case QCA_WCN3991:
> -	case QCA_WCN3998:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/crbtfw%02x.tlv", rom_ver);
> -		break;
> -	case QCA_WCN3988:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/apbtfw%02x.tlv", rom_ver);
> -		break;
> -	case QCA_QCA2066:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/hpbtfw%02x.tlv", rom_ver);
> -		break;
> -	case QCA_QCA6390:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/htbtfw%02x.tlv", rom_ver);
> -		break;
> -	case QCA_WCN6750:
> -		/* Choose mbn file by default.If mbn file is not found
> -		 * then choose tlv file
> -		 */
> -		config.type = ELF_TYPE_PATCH;
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/msbtfw%02x.mbn", rom_ver);
> -		break;
> -	case QCA_WCN6855:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/hpbtfw%02x.tlv", rom_ver);
> -		break;
> -	case QCA_WCN7850:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/hmtbtfw%02x.tlv", rom_ver);
> -		break;
> -	default:
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/rampatch_%08x.bin", soc_ver);
> +	if (rampatch_name) {
> +		snprintf(config.fwname, sizeof(config.fwname), "qca/%s", rampatch_name);
> +	} else {
> +		switch (soc_type) {
> +		case QCA_WCN3990:
> +		case QCA_WCN3991:
> +		case QCA_WCN3998:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/crbtfw%02x.tlv", rom_ver);
> +			break;
> +		case QCA_WCN3988:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/apbtfw%02x.tlv", rom_ver);
> +			break;
> +		case QCA_QCA2066:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/hpbtfw%02x.tlv", rom_ver);
> +			break;
> +		case QCA_QCA6390:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/htbtfw%02x.tlv", rom_ver);
> +			break;
> +		case QCA_WCN6750:
> +			/* Choose mbn file by default.If mbn file is not found
> +			 * then choose tlv file
> +			 */
> +			config.type = ELF_TYPE_PATCH;
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/msbtfw%02x.mbn", rom_ver);
> +			break;
> +		case QCA_WCN6855:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/hpbtfw%02x.tlv", rom_ver);
> +			break;
> +		case QCA_WCN7850:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/hmtbtfw%02x.tlv", rom_ver);
> +			break;
> +		default:
> +			snprintf(config.fwname, sizeof(config.fwname),
> +				 "qca/rampatch_%08x.bin", soc_ver);
> +		}
>  	}
>  
>  	err = qca_download_firmware(hdev, &config, soc_type, rom_ver);
> @@ -816,8 +881,15 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  	/* Download NVM configuration */
>  	config.type = TLV_TYPE_NVM;
>  	if (firmware_name) {
> -		snprintf(config.fwname, sizeof(config.fwname),
> -			 "qca/%s", firmware_name);
> +		/* The firmware name has suffix, use it directly */
> +		suffix = strrchr(firmware_name, '.');
> +		if (suffix && *(suffix + 1) != '\0' && *(suffix + 1) != '.') {
> +			snprintf(config.fwname, sizeof(config.fwname), "qca/%s", firmware_name);
> +		} else {
> +			qca_read_fw_board_id(hdev, &boardid);
> +			qca_get_nvm_name_by_board(config.fwname, sizeof(config.fwname),
> +				 firmware_name, ver, soc_type, boardid);
> +		}
>  	} else {
>  		switch (soc_type) {
>  		case QCA_WCN3990:
> diff --git a/drivers/bluetooth/btqca.h b/drivers/bluetooth/btqca.h
> index bb5207d7a..9d28c8800 100644
> --- a/drivers/bluetooth/btqca.h
> +++ b/drivers/bluetooth/btqca.h
> @@ -161,7 +161,7 @@ enum qca_btsoc_type {
>  int qca_set_bdaddr_rome(struct hci_dev *hdev, const bdaddr_t *bdaddr);
>  int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  		   enum qca_btsoc_type soc_type, struct qca_btsoc_version ver,
> -		   const char *firmware_name);
> +		   const char *firmware_name, const char *rampatch_name);
>  int qca_read_soc_version(struct hci_dev *hdev, struct qca_btsoc_version *ver,
>  			 enum qca_btsoc_type);
>  int qca_set_bdaddr(struct hci_dev *hdev, const bdaddr_t *bdaddr);
> @@ -176,7 +176,8 @@ static inline int qca_set_bdaddr_rome(struct hci_dev *hdev, const bdaddr_t *bdad
>  static inline int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>  				 enum qca_btsoc_type soc_type,
>  				 struct qca_btsoc_version ver,
> -				 const char *firmware_name)
> +				 const char *firmware_name,
> +				 const char *rampatch_name)
>  {
>  	return -EOPNOTSUPP;
>  }
> diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
> index 37129e6cb..c566d0bf2 100644
> --- a/drivers/bluetooth/hci_qca.c
> +++ b/drivers/bluetooth/hci_qca.c
> @@ -229,6 +229,7 @@ struct qca_serdev {
>  	u32 oper_speed;
>  	bool bdaddr_property_broken;
>  	const char *firmware_name;
> +	const char *rampatch_name;
>  };
>  
>  static int qca_regulator_enable(struct qca_serdev *qcadev);
> @@ -264,6 +265,17 @@ static const char *qca_get_firmware_name(struct hci_uart *hu)
>  	}
>  }
>  
> +static const char *qca_get_rampatch_name(struct hci_uart *hu)
> +{
> +	if (hu->serdev) {
> +		struct qca_serdev *qsd = serdev_device_get_drvdata(hu->serdev);
> +
> +		return qsd->rampatch_name;
> +	} else {
> +		return NULL;
> +	}
> +}
> +
>  static void __serial_clock_on(struct tty_struct *tty)
>  {
>  	/* TODO: Some chipset requires to enable UART clock on client
> @@ -1855,6 +1867,7 @@ static int qca_setup(struct hci_uart *hu)
>  	unsigned int retries = 0;
>  	enum qca_btsoc_type soc_type = qca_soc_type(hu);
>  	const char *firmware_name = qca_get_firmware_name(hu);
> +	const char *rampatch_name = qca_get_rampatch_name(hu);
>  	int ret;
>  	struct qca_btsoc_version ver;
>  	struct qca_serdev *qcadev;
> @@ -1963,7 +1976,7 @@ static int qca_setup(struct hci_uart *hu)
>  
>  	/* Setup patch / NVM configurations */
>  	ret = qca_uart_setup(hdev, qca_baudrate, soc_type, ver,
> -			firmware_name);
> +			firmware_name, rampatch_name);
>  	if (!ret) {
>  		clear_bit(QCA_IBS_DISABLED, &qca->flags);
>  		qca_debugfs_init(hdev);
> @@ -2309,8 +2322,10 @@ static int qca_serdev_probe(struct serdev_device *serdev)
>  	qcadev->serdev_hu.serdev = serdev;
>  	data = device_get_match_data(&serdev->dev);
>  	serdev_device_set_drvdata(serdev, qcadev);
> -	device_property_read_string(&serdev->dev, "firmware-name",
> -					 &qcadev->firmware_name);
> +	of_property_read_string_index(serdev->dev.of_node, "firmware-name",
> +					 0, &qcadev->firmware_name);
> +	of_property_read_string_index(serdev->dev.of_node, "firmware-name",
> +					 1, &qcadev->rampatch_name);
>  	device_property_read_u32(&serdev->dev, "max-speed",
>  				 &qcadev->oper_speed);
>  	if (!qcadev->oper_speed)
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

