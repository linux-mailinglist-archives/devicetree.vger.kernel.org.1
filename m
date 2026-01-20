Return-Path: <devicetree+bounces-257602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPD7M9jkb2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-257602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:26:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A5D4B41B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 21:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 14F329E9EBF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7DC3A35DA;
	Tue, 20 Jan 2026 19:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eV7uS9Z3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E856736404E
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768938797; cv=none; b=ZQ7trlnqyRZrpPgQheb0ef2MyroQGPgZ3eJsUa/VwSMtrcS9HGYpkbI3vBnqFE+kd6TQCK2OojFG+yKnfeL/fKCg3mNvAoOgTbnRbbXCF0GRjE3f9mxNDs0+yzzFzHeMyNB5O9+LwlSgZns88jIJyj8xQUkneILSZchNZ/ilUVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768938797; c=relaxed/simple;
	bh=hzlIGlYQi366/pUFdNolodFmxI59+xO3Up7iWwZOf0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W0mgeE4VLWTGhbOTiBm7v/VLNUXPkoQmudCoEvgV1naRQOaMbWkPCjFdZR7alfjEaiBfGpn8agzLO5rV053CcVZ9dF+og6zSbCcDBsPgRCztwwtDL+RCHBNkbZyONRnQ/ikilyyHSRgb+T43r6YWP2CwwqCGTPtFAQ/CIrZ0+Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eV7uS9Z3; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-11f1fb91996so12999111c88.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768938793; x=1769543593; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FKSGoUPQXpk7imDzMvWC4kCJaezJl3fPb9J0kmFWLxE=;
        b=eV7uS9Z3/ESxSPdR4BMwFVQglCKVJeDCfGbDBnkC2NVKd+CuTESYZ/S1AJrxvoWzDy
         bg4MINHvtS7Y9uVRrH04jS9eLhHzYgUg+rbgpLU2/XHIdCLc7b6xjSwvM9K8peM2rRfa
         KPoXFn1VB/Jw2u6P5xrfNGOuZPiltCPOW+Kum82Fde+KnNdEF+Gg6Seijmdevi3btilt
         A60cDJXknpMnrIrg7PswXWQ9a5epiiURd6m8OsK2DK9Uo6pIT5QHUCP6b8TaXLHtm5c5
         kglQrqIDNi/tEzJc0Qo8Mvn0NyTcLFktFVDS+FYwSN9FzYtcfUHOank9IxG2XOHuuAkD
         Mm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768938793; x=1769543593;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FKSGoUPQXpk7imDzMvWC4kCJaezJl3fPb9J0kmFWLxE=;
        b=Bei4BWNI/j1rnDnItQvO4nSLLUL5P7WNNl+oug2HcK6Jth4CI/1GcEjsm6ipalTxJ1
         Ss0cNRLKd5AhVoTfakAlhXcVeAOuxFCv5y0xyAZ+74IeCtl2FTrIlH5wOCOrI2WW88OB
         bA83iwXp5sd7ktm0PS5xn2rdd11TAeq4J6vMInBOxtAJFIZ8+Rnh1f2wV71e+N5WUxEA
         ScBWTIN6BdR+uqEd18xtNwZ0GMCjTpZmRxAw3pQdlbVqmhwUVyhvPjLylB5uIU8qa3u2
         bg8sZ2vC1kzNA54Kzu/R+U/niKnUwxHJ5KWS/z0SNPwQor0TmXRrqKxnXmXIqIm6Jltq
         evzg==
X-Forwarded-Encrypted: i=1; AJvYcCWoT12i0AfV9FA1DMnwabYUTigRIPMi8S9z/2lHXFJaicCfKctq+U5EopVtOJEq+tmpTVwSTpGwLJTu@vger.kernel.org
X-Gm-Message-State: AOJu0YxXc3hlC3AhkbMSuLL1etGW3HEymZ9qjBdbLL7ITg27hB4UtuQ+
	WMOyBR2X29J4AphgzUXNFvxz54AZV/h1GJKknXwoNGHWbzjgJ9u7zN4I
X-Gm-Gg: AZuq6aKrnl2Xe1o2bGaaVXgaXKucWFTiwzGmsTIKysg6sKsdf4iJR/jlRCGbjY51VgF
	LzoLxmJHH3zyWSCepHZkYUUQzY+MltI+8UDxqtUsWBGPFXmXr+o0KUj1flwHuWjo7/uF3YhTjFK
	M7YZvgj9jDikpSftasnEmUODtjQzqj0SxvQ/7UrkSe5/gu+sN/oBcCnZCthYYbrrtpiNc8YZKY9
	vRvPTXKIUaYyY/ZbyCZs/9C8XgzIjOZ9TiCyy1ukjvClhN1BUMuzy4WTRgchj4WZVGBt+cxGzun
	W+cO3aeFjYI0IC4equeP3z4S7GCy8HRdTnz6x5AWzLGySRpITfDYNuhjZ/UN9JMiRlKe6jBUYJh
	WiKkyNkr67j4sB8AGOF0fWqiJgRmoe6PrghsHmQW/FVKWHgqpS4BRjXaUAve6m9amCfqguEB0vt
	qQTIH9R+yJIkoqsEdw65T1esXuwxf5eDi9mXYhUK7IAzulWLsylxsn
X-Received: by 2002:a05:7300:23c7:b0:2ae:56dc:eb18 with SMTP id 5a478bee46e88-2b6b5002350mr13024649eec.21.1768938793431;
        Tue, 20 Jan 2026 11:53:13 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:d631:e554:f0bd:4106])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b364579csm18213930eec.23.2026.01.20.11.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:53:12 -0800 (PST)
Date: Tue, 20 Jan 2026 11:53:09 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: yedaya.ka@gmail.com
Cc: Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: input: touchscreen: edt-ft5x06: Add
 FocalTech FT3518
Message-ID: <g7lgjwenwdclj6etwae3jjunfxsgglbemv7jhmcy7hmcyzxxkj@bqolb5yjxbq3>
References: <20260118-touchscreen-patches-v3-0-1c6a729c5eb4@gmail.com>
 <20260118-touchscreen-patches-v3-1-1c6a729c5eb4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260118-touchscreen-patches-v3-1-1c6a729c5eb4@gmail.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257602-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[protonmail.com,kernel.org,vger.kernel.org,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,protonmail.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 37A5D4B41B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Jan 18, 2026 at 10:29:40PM +0200, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> Document FocalTech FT3518 support by adding the compatible.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>

Applied, thank you.

-- 
Dmitry

