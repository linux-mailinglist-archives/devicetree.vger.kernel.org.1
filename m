Return-Path: <devicetree+bounces-260178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Jj+LSB6eWlQxQEAu9opvQ
	(envelope-from <devicetree+bounces-260178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 03:53:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336C9C6C3
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 03:53:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6E9F300BD86
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 02:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4472C11CF;
	Wed, 28 Jan 2026 02:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SiIQOE+W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC452BE7D2
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769568796; cv=none; b=STBFlLmQ7UEl6kW00fiSiuaFyr1KifsPkSE65/y9gjhlZfB4eFZegQ4A9WmNMxuROQOKLeHlZ+b46k3V7FEMpIhetroyyg4gprMIi8O8x5rpVimF/KIrFtNrXFc+7lighKtvBssEpuhtlSovrST8h994BaJTYngZLdwExLHSMis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769568796; c=relaxed/simple;
	bh=9KL0qFGhdBvOIIw6GVscMMDXp1h7L+qs/1b2H49sp40=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GenfbRfxD593LN7qMahgbjVyZ4dkOqgALQbipoxusyMMrP1+QIVTD+M3mitjUueK9JGB0H1DdA41lP4quy3yeH52tRv910HzsbMh1DOjH4LbBaHQEJj9k80oY5nAS2VIHMdekMwxGNDGRSCesk/iFn5zcoEZh7kgzC75JBKy4J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SiIQOE+W; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-88a26ce6619so81441616d6.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769568794; x=1770173594; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yluvfUNr6pH7GOU/s+jQXcqg7WVVoVQL2cZIk1rM12A=;
        b=SiIQOE+WNstIDMT5YlVCQsJtZWphJZJr3NdEDMdV5NDb67FflCWbfmi3VIVT0kk6ut
         Eqvh/niJq2sI0m/kI7RTwI5BZC9UZIq6s50meT0FW+1yG0LTGneqVw71RkKu2BH2L4OB
         uAdj0yV5PMH47KKYtVJZid4JEn/6KRfjQt8tWwF/ufLdmqQqAgUXOgkzCoMEdFoEUTk8
         tqlCWumtPztW5G/VJ6/2OdX/qUhpIsUFVtFjDQ+KAhc+rfUPFLpKr6IvGmxCsK8TTZbW
         riyZr8g0rDrhdE11+KTpoiCHOwkbxmeBXDglcBQKaGzWiTVtBM+a/TyVL0rClf2Plb27
         oK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769568794; x=1770173594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yluvfUNr6pH7GOU/s+jQXcqg7WVVoVQL2cZIk1rM12A=;
        b=uEwyHY3lwuo3r6iaOeJbUbMaHOe3jyQRbALqXHsY4RjNXTy8CUrKeFU9MbM17MqfOm
         iMl0kAiRy9XOcWXWuf3x+IxDgppJaQU/Zx5gohNtNJR2lGLMMJ3gjD15XtkbXX39JbKA
         5+Ig59JCM3xZBUe/+ujka+q1w+oTD8nVgKBYKxMFbR6yxQKrlnU7z+zZ2P+K3kn2GidN
         xqN0pSqJkrABs8Ja+gKCi0CXFPa0KE3Cm4uUr/AkXw5Lqp0Jajuf3qEhB4T4fOizlAg3
         oAhgvvnf0X6l6bJq6Ct3Yp89PpKs903Go2MaJIV00LfG8Xizkg2zTV7CiJX6jvrqPfSO
         15jg==
X-Forwarded-Encrypted: i=1; AJvYcCUWWp8otLrCbTZh3T40lJYPgJ+raPkDV8HGLasgXVJ4TiSuyas5WLZicbFIdBxbBBfUFqiDa7Ks6M49@vger.kernel.org
X-Gm-Message-State: AOJu0YzS7UzaxhXOnirr5Yfg5QetaB2BU+vBG3QjauRBJjaBnROlrYmj
	21g2SkfInp7AhaSsGJh8OpYUEd3UogX/lSWT14SqFl6nM3MWu3kZQKy/
X-Gm-Gg: AZuq6aIbuZz9NRIXsOweK//bYSgC7PaNUzhD7bb4RtdH5/HiWsHCdAjWhOzB/3MKULl
	ht8P+9DSZ+lqFrfI6KC5WQ5ctcVAkQEPlGKBqj6UI5MB/uPK4663gy5QLfEgB+BCBqGrWYs5Sgs
	kCpwRbZg7kJn/6gjT/OdF3yXAtLclIYdAgd5FpsYxvvBXuEskb8SCakyQ645INwPtwTwcnl4VPq
	/0V4Sh94uBz85KXNXnrnDW2pg0C74+U+3FEx55yUSvRMMVhIP+aiIsK13sFA3dqDS2HbtC16R0b
	hVSeHf/CC317Cp4DNQVxbMlXKIH6oNvFVb/wJR3GbQcUX44KhqqPIRs94SLQ201QRwsw53QDtQy
	TsbMzvFmyGHUN2VDFBNHsHZO/opePKVgslHkwEtnh3cICGq3TgTutdSd2QuTBSVOqXXNqD0lTy+
	IE2Tj+a519DOQrLQ==
X-Received: by 2002:a05:6214:da5:b0:894:6e5d:eb8d with SMTP id 6a1803df08f44-894cc8c977dmr49820206d6.34.1769568794147;
        Tue, 27 Jan 2026 18:53:14 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d375ed92sm8696686d6.44.2026.01.27.18.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 18:53:13 -0800 (PST)
Date: Tue, 27 Jan 2026 21:53:38 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
Subject: Re: [PATCH v7 2/5] media: i2c: imx355: Support devicetree and power
 management
Message-ID: <aXl6MpRB9ncCeu2M@rdacayan>
References: <20260117040657.27043-1-mailingradian@gmail.com>
 <20260117040657.27043-3-mailingradian@gmail.com>
 <578668b0-cba2-4550-b676-26ed0b447bf2@linaro.org>
 <aW-V8VTcOICLWqaU@kekkonen.localdomain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aW-V8VTcOICLWqaU@kekkonen.localdomain>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260178-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6336C9C6C3
X-Rspamd-Action: no action

On Tue, Jan 20, 2026 at 04:49:21PM +0200, Sakari Ailus wrote:
> Hi Bryan, others,
> 
> On Tue, Jan 20, 2026 at 12:44:24PM +0000, Bryan O'Donoghue wrote:
> > I think reset should be asserted before regulators and power are switched
> > on. i.e. before you try to switch the chip on, you should establish that the
> > reset pin is in the state that the timing diagram calls for.
> 
> Indeed.

I think the discussion is more about whether there should be an assert
in the same function as the de-assert.

> The xshutdown pin, as it is typically called labelled as "reset" in this
> case, functions as both hardware reset and hardware standby mode control.
> It should be asserted (i.e. be set to low level) whenever the sensor is
> expected to be powered off. Typically deasserting it is the last step in
> the sensor's power-up sequence. This applies to nearly all CSI-2 and DVP
> (parallel) camera sensors. (There are some exceptions that use explicitly
> two GPIOs for similar functions but there are very few of them.)

This patch has the reset asserted by the time it gets to
imx355_power_on():

- when coming from runtime PM, the suspend callback asserted it
- when coming from probe, GPIOD_OUT_HIGH asserted it (considering that
  active-low also affects the initial output setting)

Should it be asserted again inside the function, or
should the initial `gpiod_set_value_cansleep()` be removed?

