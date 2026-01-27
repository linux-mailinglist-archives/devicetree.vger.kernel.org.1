Return-Path: <devicetree+bounces-259824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SANBFEiWeGnmrAEAu9opvQ
	(envelope-from <devicetree+bounces-259824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:41:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E448892F4D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 480AA3004D1C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500E9342500;
	Tue, 27 Jan 2026 10:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="T/1BrkNW";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="jhub10ew"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C92342518
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769510470; cv=none; b=Z/wTwy9A9stAPKh61IaxvgmsPr3QGUKzR2HcN+jGQBzbtSbQJi7OD0lSInV1ebhDG7Z9Rw5AgSdrF+Bfck9lC0d7iOuB5oqpM/mjU7VObFrJdnww0rnkKrx+00HoR3rUKOtac/BNBrw+saV342WNcg7nyTHsT5K0ISw5qs1qnQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769510470; c=relaxed/simple;
	bh=ep8pkCwlbUpSN66L5MpDnjNjWPh2mpgjhXM0xSkHFh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sXzAX9muiMTHHTWzVqVNd3jyPPS1fnubWQzI/6lXOjSLkF5B++1LxLqmYzfmqtjpkwKp+78sYYPnU4LsIedrfPBoSb8gEXGeu6AkF13rvDTHGScXrP7pigUgLW8pl7sGz7bsSGOWZfKc68Tjr8t2vY1No9jU1E2/VJhiqwD/Y2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=T/1BrkNW; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=jhub10ew; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769510467;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Euj5FVmeiCgVhty6Ys/ujWG8Y866aXXG7V4F32PyIco=;
	b=T/1BrkNWyXjGmU+ymdNnSNEtto9ZQ3lAmC1YqUfkRVpbmZJmKVruFcAGIBZAM5FsNZJvLM
	6UEDl1LhQCz6r92M6VsYCLYc3mePLvtrvty7lfU8f7A9cmbLLerUmp7zpONb2L3EZNTSvG
	oNPiWfbH9MK9+R+c99y+Vp8ykykFvZk=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-511-F-7k4TAPOXyZpejT_kJFVw-1; Tue, 27 Jan 2026 05:41:06 -0500
X-MC-Unique: F-7k4TAPOXyZpejT_kJFVw-1
X-Mimecast-MFC-AGG-ID: F-7k4TAPOXyZpejT_kJFVw_1769510465
Received: by mail-lf1-f71.google.com with SMTP id 2adb3069b0e04-59b70088327so3325555e87.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769510464; x=1770115264; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Euj5FVmeiCgVhty6Ys/ujWG8Y866aXXG7V4F32PyIco=;
        b=jhub10ewdGewbax9zYjq3xfVBunI0eM2we7Uume9dL2DConQcshOLR3fUrNVNaLcfi
         NQEkRkUogVl8IsM6bahZGZtOe2BDd+bvxYN9ohmk6e5QHGEPREV2gxi7/te+91OXSsOv
         1ERjmLMXoidIyEvpXpoVT1aq0IYaXVHcK7SLw2a7WT7xqRstVqztebhi+4ueBPqt5QlJ
         Wl77P2esxG1IWHXHMJIWcfDdKf7yGFGGb21DfokVSva8mXg0ShvhvnOiIyLd0sKaea6e
         etIEV9QtL8eNFTbjamsOCtFQTOKzha3PWsIzZ/05IlY8Nw/68eQka9YU42HLsFqsj55h
         m3MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769510464; x=1770115264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Euj5FVmeiCgVhty6Ys/ujWG8Y866aXXG7V4F32PyIco=;
        b=A+dxM8XP0qrKVe9ignt/6EpZdN92Zn7tyoFx3Hp1tqxqsDXM27g5AsWTepzKagtB75
         MJmIET422nWToNq4NqU4d2riHiaL2T85n4G23X6ni1V3zXO+uuq8l8F8VJmsXO8XWbuF
         ZWO5h8uOpmoaVvo5JAuLX+i1SJ2qNnTGJUqzlZ6pQgOukGZpkOb1c6RzY1qa3bpwEqxr
         T7L8XjmBIqi/dTjYhV4t9lD0blc6crkhoX6ahzwrxgvu0TYRVLmy1RogiPUl+Nae7TjZ
         DqcYY71NYk9aGwLQjPKseGUsed9/w2yNN0BugLoGHGQcOF+MdNIJ7ml1SQq82NsWcajn
         Lh2A==
X-Forwarded-Encrypted: i=1; AJvYcCUatr8E8RqBUPOYvgKapQPys1rVDkHMCze3PK2cB8yDOJi8mnDlvGcdyp/vSysYwCIIxUYl6iAwP57e@vger.kernel.org
X-Gm-Message-State: AOJu0YwHZAkUifmyQ5u1GAlFN+g5hIzsrRXFFa+jKDquEgKpbwLWTNxU
	H8h/2N7U1yBIW5Mc9y4Q+RQ2MB+Es760+lVPk2kn+tKQDZoQKLBl+N5jfcnC62bf1rhEtPXjVGh
	8OSuVkHQh4BgwPyTLzvphDUEqLCcHazIKgHRiG25670Rl8YmaRUrlcGOjyc0iDc4=
X-Gm-Gg: AZuq6aI2cLWas7KK8nGQ1XRPS6mweZSB1aefBoDdi+H00hGSucpzL+hCFmdjfxunpjU
	wJmjrZKwAulWOp8XVY781jXh+u2mPp5h2yVSzdzPSo9oQaMwDNvart/DwfDd8odVsY6VzFQlPBE
	QkhMOzlggwjsYe9gWyRuZxR+QRHg24CwU8pqE8K3xQG9Z3X2t38GUylnt81vdIbWDhsOX1Nt+CI
	xGJkFefjzUWSTgaZkb0O+RlKEjCVj3TAWetXqqEm3SHcTsUdJEVbAJh97NOuugxw8X51dntrHec
	DsUCSUYJG27Xel65pI0bTrIKIQ5WEwr16vfLAyYabX0IdfS4JJ1LFURXdjd0IKLefxcxZpsH246
	c82U5DvZaUV5Y
X-Received: by 2002:a05:6512:3b91:b0:59d:fd1e:50da with SMTP id 2adb3069b0e04-59e040308e5mr507790e87.36.1769510464445;
        Tue, 27 Jan 2026 02:41:04 -0800 (PST)
X-Received: by 2002:a05:6512:3b91:b0:59d:fd1e:50da with SMTP id 2adb3069b0e04-59e040308e5mr507755e87.36.1769510463979;
        Tue, 27 Jan 2026 02:41:03 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.22])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de492cc4asm3330939e87.101.2026.01.27.02.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 02:41:03 -0800 (PST)
Message-ID: <c2e191c4-dec4-4e42-b108-353778d9bd18@redhat.com>
Date: Tue, 27 Jan 2026 11:41:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v8 4/4] net: dsa: add basic initial driver for
 MxL862xx switches
To: Daniel Golle <daniel@makrotopia.org>, Andrew Lunn <andrew@lunn.ch>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Frank Wunderlich <frankwu@gmx.de>, Chad Monroe <chad@monroe.io>,
 Cezary Wilmanski <cezary.wilmanski@adtran.com>,
 Avinash Jayaraman <ajayaraman@maxlinear.com>, Bing tao Xu
 <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
 Juraj Povazanec <jpovazanec@maxlinear.com>,
 "Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
 "Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
 "Livia M. Rosu" <lrosu@maxlinear.com>, John Crispin <john@phrozen.org>
References: <cover.1769053079.git.daniel@makrotopia.org>
 <18c6a24eef8617abb5073569fee162f1aa1c06ea.1769053079.git.daniel@makrotopia.org>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <18c6a24eef8617abb5073569fee162f1aa1c06ea.1769053079.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259824-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[makrotopia.org,lunn.ch,gmail.com,davemloft.net,google.com,kernel.org,armlinux.org.uk,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E448892F4D
X-Rspamd-Action: no action

On 1/22/26 4:42 AM, Daniel Golle wrote:
> +static int mxl862xx_send_cmd(struct mxl862xx_priv *priv, u16 cmd, u16 size,
> +			     bool quiet)
> +{
> +	int ret;
> +
> +	ret = mxl862xx_reg_write(priv, MXL862XX_MMD_REG_LEN_RET, size);
> +	if (ret)
> +		return ret;
> +
> +	ret = mxl862xx_reg_write(priv, MXL862XX_MMD_REG_CTRL,
> +				 cmd | CTRL_BUSY_MASK);
> +	if (ret)
> +		return ret;
> +
> +	ret = mxl862xx_busy_wait(priv);
> +	if (ret)
> +		return ret;
> +
> +	ret = mxl862xx_reg_read(priv, MXL862XX_MMD_REG_LEN_RET);
> +	/* handle errors returned by the firmware as -EIO
> +	 * The firmware is based on Zephyr OS and uses the errors as
> +	 * defined in errno.h of Zephyr OS. See
> +	 * https://github.com/zephyrproject-rtos/zephyr/blob/v3.7.0/lib/libc/minimal/include/errno.h
> +	 */
> +	if ((s16)ret < 0) {

The cast is likely not needed above? if `ret` values < S16_MIN are
possible this will return such values to the caller without the IO err
printk.

> +		if (!quiet)
> +			dev_err(&priv->mdiodev->dev,
> +				"CMD %04x returned error %d\n", cmd, (s16)ret);
> +		return -EIO;
> +	}
> +
> +	return ret;
> +}
> +
> +int mxl862xx_api_wrap(struct mxl862xx_priv *priv, u16 cmd, void *_data,
> +		      u16 size, bool read, bool quiet)
> +{
> +	__le16 *data = _data;
> +	u16 max, i;
> +	int ret, cmd_ret;

Minor nit: reverse christmas tree above.

BTW the initial port isolation LGTM, but I would appreciate some DSA
expert second opinion.

Thanks,

Paolo


