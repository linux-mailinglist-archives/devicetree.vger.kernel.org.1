Return-Path: <devicetree+bounces-264455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHYILAlLi2mWTwAAu9opvQ
	(envelope-from <devicetree+bounces-264455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:13:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03A11C581
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D0AA3038ADD
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C61D3815D0;
	Tue, 10 Feb 2026 15:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gq1+VRoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2743533BBAF
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770736381; cv=none; b=X8QAxwEG1lZCA3s4t0neqJzJKbgQAa6Lra6Me3KkNdcYZu5M+C8jdxD0CqXbVKMFb6sueiITeWMC3//zpfPhvu4DQ1mj2PbhrwrqBygwiWsJc9h5qRtB/xC1Ox1+dhyiap8bbGhpW/FJ1GFt6tQjaE20dWzdiK+Z3H4v8UEesVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770736381; c=relaxed/simple;
	bh=ujTMw5OZHbZh10WeFW61t2hTTQT4Vze0CVoiCixRuLE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gwim3MZW2yX1kUHuw97tlgKTr3buLIaak29Cth8oBaPqHW8EWGomSDrE4DFghiAR3PkpiP0jZO4nhq8hncZvSEYeyuYTVO3w2b43fvBBjO9IMJ2h9IdCfBx5kSQL5uaLYZ4FuTHrYbYbKICyVywsTtBvOOvOSt9h+NVmWlA5XoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gq1+VRoT; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-1233b953bebso29933c88.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770736377; x=1771341177; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fAxxTmaAkGZtVBPyg8LKag6i7qhLx1ugcDwEBREgoo8=;
        b=Gq1+VRoTiMopHK3zsF2BPmu9MBUTXcRcaD8fhqo6ynet/F3tjMqGRcsT8PDEUXVuIa
         jI4jU++1jT6fqicKJQ7hv5imghOST3tNnflvvsyfICUMyC/FPsn5KYkHFY5mlqLDIF3q
         n9bU1aD+Yt+u40ZF7DVZbv+a3yb01qOHH8CavY6AVluCnsAI7pwvWDGlojxnK1JL/ZNU
         rpNGVmVmmdqgoccY7uDw+6i6atYvl7+0KemBLZA+ZvdvYUBSuTGnppSdKKQofaXy7s7j
         t9rAcU5U8ItxhSEFCQSywuz5Xwcg4hpWtH6Y6M0ZoUg1uGzwHcrA4MdnjnTZYJ2wfdyU
         8FVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770736377; x=1771341177;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fAxxTmaAkGZtVBPyg8LKag6i7qhLx1ugcDwEBREgoo8=;
        b=ePP1C2mpo6sMTx6NE5oD3s/pjwLUtKY9mALtTRaKLdFnnE6J1wTQDPxgKUlE8uZuO+
         bi0BsrS6ksSnkNWoWlyx3fLMfOZcgOl3POBvrjPI+x1dNlJqXBVIqkyvaBQ7e8IbG6pJ
         V78WaT4KlssMMTfy9f7p++9aLO1utU5cTTMW6ZEjWvsPr0m9OOMT8FSl41d8x71/5Z8+
         7Mwmhhn/FeLT+iclC0UyqYsh25RFj/N/9mV1mwdGm6zSvE4i9gDziwhzUZ3/rqtiOQII
         liLFDeh0AxeRkp7HUGj8nCJj87kmfdiWMybXOu7lltzlgoidYM0pYrAASChUngNbg8ny
         mfxA==
X-Forwarded-Encrypted: i=1; AJvYcCUCzqdlHeVIpdr8030sNGH64nvw7VmoM77e295LjRE5S6VsWtavs+3PtR6Dw1l3no8wDvA2KHumUFl0@vger.kernel.org
X-Gm-Message-State: AOJu0YzmsutttlpOn2QcTyxK+cbHfF0a3459FJoRrqBbjEK1YduOgpuO
	kzi9hmn99ZL1Hep8U2FMpCDM2O6nBziM7rEC3oWj/RXU61Y9NsWLLuft
X-Gm-Gg: AZuq6aITyl6nyQbaB5DRzkcA6waIIwhnMvekP6erwuDds9UsyOH5dNVJBpJbuqIs8X9
	uLVpjxcg8ID0CFKdua8v4bwRIJHsu4upuHa+1aPSedh7Pd1GDgr3nPj0yQz8CZ2+KzNdS7Ce78j
	BQa5XtpYgUCq+uFiGTUU/omAsirDprYpWgeUBva5qjZWvqVSjWVigsrDULkzDHuIkfQ2ck8mI4H
	O0gLRH1fo9bJo0D0hmREeID4bVYcaNHxdno7foTD6bJFALBBXa3/2vGAL715TvbB81Lrocuzyep
	xWvr+L2MmYgWKTwmbfoHFwtq07lPPsgxD8tjDsw1Z1Zdc1e9VHt/5BlVsBnRAii018AwHSJUwn8
	ikU88vSyewjc0HDgmm2SOQJlSXetVX15s7Jtc9o3i5aT5jQbxesyJyQ+yTNDP05TKKl58+o+hhe
	D6YNBcD/5uv3OI6IxcLu6Rx2nekG3osuGyuo/D
X-Received: by 2002:a05:7300:caca:b0:2b6:ab62:ae74 with SMTP id 5a478bee46e88-2b85683314cmr5728590eec.35.1770736376765;
        Tue, 10 Feb 2026 07:12:56 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba6baef3aasm5675049eec.25.2026.02.10.07.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 07:12:55 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 10 Feb 2026 07:12:53 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Carl Lee <carl.lee@amd.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Hsu <ythsu0511@gmail.com>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	peter.shen@amd.com, colin.huang2@amd.com
Subject: Re: [PATCH v3] hwmon: pmbus: mpq8785: fix VOUT_MODE mismatch during
 identification
Message-ID: <3f44923f-f411-4712-870b-b0348e4fe8b0@roeck-us.net>
References: <20260210-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v3-1-84636ccfe76f@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v3-1-84636ccfe76f@amd.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264455-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:email,roeck-us.net:mid]
X-Rspamd-Queue-Id: 2B03A11C581
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 03:26:34PM +0800, Carl Lee wrote:
> From: Carl Lee <carl.lee@amd.com>
> 
> When MPQ8785 reports VOUT_MODE as VID mode, mpq8785_identify()
> configures the driver for direct mode. The subsequent
> pmbus_identify_common() check then fails due to a mismatch
> between the reported mode and the configured mode, causing
> device initialization to fail.
> 
> Override the reported VOUT_MODE to direct mode to keep the
> driver configuration consistent with the reported mode and
> allow successful device initialization.
> 
> This does not change how voltages are interpreted, but avoids
> a false identification failure caused by mismatched mode
> handling.
> 
> Signed-off-by: Carl Lee <carl.lee@amd.com>

Applied.

Thanks,
Guenter

> ---
> This series fixes a device identification failure on MPQ8785 caused by
> a mismatch between the reported VOUT_MODE and the driver-configured mode.
> 
> When the chip reports VOUT_MODE as VID, the driver already treats it as
> direct mode, but the mismatch causes the common identification code to
> fail. The patch ensures the reported mode is consistent with the driver
> configuration so the device can initialize successfully.
> ---
> Changes in v3:
> - Drop patches 1/3 and 2/3 from the series.
> - Pass through non-VID modes unchanged
> - Add clarify code comments
> - Link to v2: https://lore.kernel.org/r/20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-0-3744cd9b2850@amd.com
> 
> Changes in v2:
> - Combine DT binding and driver changes into a single series
> - Fix VOUT reporting by forcing direct mode for VID VOUT
> - Link to v1: https://lore.kernel.org/r/20260203-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v1-1-67b041e2f762@amd.com
> ---
>  drivers/hwmon/pmbus/mpq8785.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> 
> ---
> base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
> change-id: 20260203-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-f48049e8411e
> 
> Best regards,
> 
> diff --git a/drivers/hwmon/pmbus/mpq8785.c b/drivers/hwmon/pmbus/mpq8785.c
> index 1f56aaf4dde8..87bd039c77b9 100644
> --- a/drivers/hwmon/pmbus/mpq8785.c
> +++ b/drivers/hwmon/pmbus/mpq8785.c
> @@ -47,6 +47,33 @@ static int mpq8785_identify(struct i2c_client *client,
>  	return 0;
>  };
>  
> +static int mpq8785_read_byte_data(struct i2c_client *client, int page, int reg)
> +{
> +	int ret;
> +
> +	switch (reg) {
> +	case PMBUS_VOUT_MODE:
> +		ret = pmbus_read_byte_data(client, page, reg);
> +		if (ret < 0)
> +			return ret;
> +
> +		if ((ret >> 5) == 1) {
> +			/*
> +			 * The MPQ8785 chip reports VOUT_MODE as VID mode, but the driver
> +			 * treats VID as direct mode. Without this, identification would fail
> +			 * due to mode mismatch.
> +			 * This override ensures the reported mode matches the driver
> +			 * configuration, allowing successful initialization.
> +			 */
> +			return PB_VOUT_MODE_DIRECT;
> +		}
> +
> +		return ret;
> +	default:
> +		return -ENODATA;
> +	}
> +}
> +
>  static int mpm82504_read_word_data(struct i2c_client *client, int page,
>  				   int phase, int reg)
>  {
> @@ -129,6 +156,7 @@ static int mpq8785_probe(struct i2c_client *client)
>  		break;
>  	case mpq8785:
>  		info->identify = mpq8785_identify;
> +		info->read_byte_data = mpq8785_read_byte_data;
>  		break;
>  	default:
>  		return -ENODEV;

