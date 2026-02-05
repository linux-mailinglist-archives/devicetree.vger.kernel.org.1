Return-Path: <devicetree+bounces-263118-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOQlKGTXhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263118-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:46:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8466EF6209
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F0DFD30039B3
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F029E2FFDFC;
	Thu,  5 Feb 2026 17:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hgoX2Ekf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D182BE64F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770313568; cv=none; b=fB+Qg1XcOMkcdT725FnXJ4INkxRsbQ+JIS/E4Rrsmn9NoqIeGmOSCWOLBl/JBxft0qaONyYSyQBtyPBl0AqgyCYPbmC/1lW/51tiEE1VMTTBZGQFjkZceSVJxYMQ44v2L33NN6yDP1tMoAwHsL678ZSPzJbML7dRfdPQWle+gJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770313568; c=relaxed/simple;
	bh=8bA0K2JE30GwCjZfSDIdESF6T3OsxthzOTJnnShe+zA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mFSP/r52jNm+HgbKbz8Ls4a+RPSIrCOqRRI/FWpI7P/+KuK2kbbhSbdpjXE44XyGE9Atk5r4dmwtFU60E/t1l8a7GGgVXE8hmy9VZPV0Jim9x6ec/ecialGyHOvVlOsquz3XOXD+UAr3ClJuRVfEeJKiUBp7dHkx0sv3lJBb5Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hgoX2Ekf; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2b834e17c3fso1102231eec.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770313568; x=1770918368; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v7PArFQyuoOZkp3FztSFckZnoOjt7B5U6/YBSIp97TY=;
        b=hgoX2EkfbrD/Ul75OBkVP5N3e5du6KI3zb+rW/DMuAicg8c7cr99hkVL1Nnl4T8vPk
         KpOvMMMjCSasHYq/WwebAzx2jlZ2r3183OgL+vLzW+8cKDAGvByPwH1okyO9rmpZ5L8s
         xEcMobX1qYkwoZRNenESn6vGDgDqddhzAd29irWcSS4wHBqVQ3fADB3o99g61wDoq9HG
         fWCdkh1KiQS3Wn6fj97jYX/CEobRw1EhXq2sswd4odBXON8cmlhu99w+3WRRPng8r/1J
         +AB/F/8ePOBYpGQ7To7UnIbbq6vv9UKJHWGxcr1i2UBSmd92Z4JXBmQAZdgPKSZFLGh9
         g5nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770313568; x=1770918368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v7PArFQyuoOZkp3FztSFckZnoOjt7B5U6/YBSIp97TY=;
        b=BZ1jYo/lpMs0jy1sHu71CPIEbSx9gVMWgnzFhjVOhDEwTCrXGKkvSbGMgeNRM+5Ppo
         tjmOBYXu5Bo0pJmybQgHpdT07ZtLlHp7rKq07cy4Z6ux0Zz5cFOUlZ65ZMSsbv5E2pZ8
         wx7h0VGPQy9+yLGjGB4wLNw7GRvnS0DWriUKFrIyrsHEatLAlUomzWZBoSndLgGm9Oyw
         IVc2krNKNdtytIHsuumH/rs4q9hs01dT/cDQ8GijkkameLOIBP3DLVxFDP96BzBfqxfL
         M3qfFPrbQg2NBbVrpPGCw9uxmOOBqIPcZOQ5dVgXPyO7ySpC1iQpc1L7qFMKInWLWqnv
         BfFA==
X-Forwarded-Encrypted: i=1; AJvYcCXJeJ91SDfmivBd2uqOXPiBpBb4ye1TjCl4XWCflqUnOn+NB1KnXvpCv2lhoUQDuDn+elHjSY/Fwlq4@vger.kernel.org
X-Gm-Message-State: AOJu0YyI62/4dH8s0f5szFpviI5qqA2w/FbZNszKMPmDbsKLPg06XYhJ
	5o+DXUg/nyUK2wYrS2/WXMrNTZsQYCtOTI9Z+11A32BIC/kTI3XmYCYQ
X-Gm-Gg: AZuq6aJ+sBZtqPp01420oVnhh14x3fJYN5mbfnaDfwRo/Ckrz/DqxbXuCV3svMU2I3U
	RFgFn1qFh2WG65eRRrQUbEVYPWdd4xvFsVWr7otPLCbmogkzDZlcqVwUfs1IuHfZJMJnyzT/x5c
	0uL89ZUz7d+msb1Bqy5pfyqbpRnIjlko3tInLT200/sBbB+jDd0eWtIQCSWP4XDNDkVPXq0pF3x
	cu/plDLkJDo30gmIsJ97qhxxIYyygbuZdIn2/UorWUg03yoUInMfATeyju0e1VLhOTrcIkraVAf
	kuY8sfmjI5UsZq8+5+Hb10v8kej2UeRgZqZNwY98S3T0AlRKiaZrnl7IECm8gGyrClTUTunDQHa
	SxCCLPZhCRlp4wfgM9A3BCI/ct1SeyCRww+EMoMWqcL9SueDHK2R/dFv9DC0mlQnFz2LZrfHgyb
	5com2sGeb1J0JhnZqynFHIIK0z
X-Received: by 2002:a05:7300:4348:b0:2b8:21d7:b7c3 with SMTP id 5a478bee46e88-2b832876eacmr3256197eec.3.1770313567497;
        Thu, 05 Feb 2026 09:46:07 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e05ce7sm4769702c88.1.2026.02.05.09.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 09:46:07 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 5 Feb 2026 09:46:05 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: carl.lee@amd.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Hsu <ythsu0511@gmail.com>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	peter.shen@amd.com, colin.huang2@amd.com
Subject: Re: [PATCH v2 3/3] hwmon: pmbus: mpq8785: force direct mode for VID
 VOUT on MPQ8785/MPQ8786
Message-ID: <fa07bf22-d56f-46fc-8e39-a50dae2efc46@roeck-us.net>
References: <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-0-3744cd9b2850@amd.com>
 <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-3-3744cd9b2850@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205-dt-bindings-hwmon-pmbus-mpq8785-add-mpq8786-support-v2-3-3744cd9b2850@amd.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263118-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 8466EF6209
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 06:01:39PM +0800, Carl Lee via B4 Relay wrote:
> From: Carl Lee <carl.lee@amd.com>
> 
> According to MPQ8785/MPQ8786 datasheet, VID mode configuration is
> the same as direct mode configuration. Therefore, when VOUT is
> reported in VID mode, it must be forced to use direct format.
> 
> Signed-off-by: Carl Lee <carl.lee@amd.com>
> ---
>  drivers/hwmon/pmbus/mpq8785.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/hwmon/pmbus/mpq8785.c b/drivers/hwmon/pmbus/mpq8785.c
> index f35534836cb8..d6624af076c3 100644
> --- a/drivers/hwmon/pmbus/mpq8785.c
> +++ b/drivers/hwmon/pmbus/mpq8785.c
> @@ -48,6 +48,25 @@ static int mpq8785_identify(struct i2c_client *client,
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
> +		if ((ret >> 5) == 1)
> +			return PB_VOUT_MODE_DIRECT;
> +	default:
> +		return -ENODATA;
> +	}
> +
> +	return ret;
> +}

In addition to my earlier reply, here is AI code review feedback:

This switch statement appears to fall through to the default case when the
mode is not VID (when (ret >> 5) != 1). If it falls through, it returns
-ENODATA.  The core function _pmbus_read_byte_data() will then see -ENODATA
and call pmbus_read_byte_data() again, resulting in a second I2C transaction
for the same register.

Also, the `return ret;` at the end of the function is unreachable because
the default case returns.

Should the PMBUS_VOUT_MODE case return `ret` instead of falling through?

Guenter

