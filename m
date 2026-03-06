Return-Path: <devicetree+bounces-271985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0G2UI2GuqmluVQEAu9opvQ
	(envelope-from <devicetree+bounces-271985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:37:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC6021EDFE
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:37:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 982163007A71
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F17FC35B642;
	Fri,  6 Mar 2026 10:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IIPRPf/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE137C0FF
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793433; cv=none; b=FrzTvxNjokBN5c3znGjt4rrgMdBdWOt07T2H1HhhH3RUO/j4WocS/RFz7rkKqsYj90cdLLxKnddCDU8iEzMchPaytdjKQFI+kqKyTFKEER4K4gQ0nDZWqmOvynlM3q3mFT2D3gXRSHFxSvKCTbJwoQQNaJ9mxwUhzzi5S5TvqX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793433; c=relaxed/simple;
	bh=9mQW205gegUibeTid/1e5hyvVPikyOjbbJTshSUvqqE=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=ti0TEgtyH/XFcB+6qm9bAPDB3EcYHzfXd4KEKlEIoCOqs7IX6GnaG0il1vQV9flyuBjOX2EdE/xiFsN8g0owl9E3gQoT5zooX8usMitpwwNealp0WEiPVNdrNTKUtPHNryAQEOazygtduVGcNBTRzDKogVm4QQ0dW0nUYHuBDPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=IIPRPf/V; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b936331786dso984129066b.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772793429; x=1773398229; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mQW205gegUibeTid/1e5hyvVPikyOjbbJTshSUvqqE=;
        b=IIPRPf/VjAEUXK8IyQI6dB7AJahg7RWN0BIknY7cs1Al2aaH1qimHs6i7pawIGUrqX
         aBc1Nslf7Kg9oY+W2vanwvTGk3ltaRcuCiCopK8wVNr8zNYLxxk4meZJPXmk9utElSw8
         F41of/pPfqErHw2h00WlD4cOll990+Tze/4WHyv7MeabOpmirywwPV/uhtInqJkH0CFa
         AOqTCp4ibA+NSsget7w2J3A683K91Rnzv9I5FxK9jwggUTGeUo8/lyxTzPUluFcavX+g
         YuamSImqSprJnKZTqCh2xY094YPt5lgYF0eI498QHjdNiqLKSMboazlBT/PPI8hVjVbo
         44Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793429; x=1773398229;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9mQW205gegUibeTid/1e5hyvVPikyOjbbJTshSUvqqE=;
        b=a1Hceu/tyvGtzIQXA75fMuK2xgx773DIZHJ+GPzr43q0skz+E5+KuDSQQddnz9q0He
         RinTWwUyyhT3rHWfnC+o7PTb/24DQKcx7ADTR4PGemI9v0vbZAHOrLCQigc3rBNiPd9n
         LaK8097WXno1OmQTNo9WqX27PhZ74MGXJvXZ1ITVgZcx5nUt8PBpbrgIcA0dHJ1CUVII
         MZNjx0ZIa25oIJwQ62EevmF3oJ1uaYtAQsirSxZ1SKv5hbpeLFqYfzpZ4tDTIU/GK5iv
         +Q0yhki0a58Oi340I4eQ+FhvAsaOt/I0/N/0ghzmTZ7JRawhfwwnNsbEzqcpqUJUik6L
         c3sw==
X-Forwarded-Encrypted: i=1; AJvYcCVrnz1FKDBY8jN9NDJmP/zFJVRpCchaZGVa47MIiJ0y1Ng9OenKv59phrtR+fhiXhSPr3SgF4gvQR6h@vger.kernel.org
X-Gm-Message-State: AOJu0YxhCfFncE7OpCOsLYMpXT+acGXsqpXYC5fILSAOCbx2AUEhj1CD
	e99l9akBNwIaPHPP7ANvovTCdsnKK1+RxSYje9BQKaevzAaXG25K8/SiPN1i9tXcXOk=
X-Gm-Gg: ATEYQzyok+1/BEFfhMuCgKm74GPtj79jJm7hUDD8uututPrHCUvE786a1tKz7BSVYaH
	yR3vFEEzOJrBRnRIhA8U0FkSwcj+RTvFb75G7SZ9tqNaZbSUxcVcZdKwQRtngpMgMbZ96ISVPIG
	E2qgmFS20FGyJJiRO9DYdBrYD6HD36D44JVzYFdJ6na9OtL7Sd8Io8C9eESoMWnct/+HWnDDv/Q
	VkSVt6pzJzh7blaVYA+4obR1+2BzquBHtNzCgCfl/k8eojED2pmnfpVv2NQ6R0IDYY4tOVwMzx8
	fv5FpEieitxIHHB4Swa7LVbH3qjNLk4Y4f8jk9US0SZB3ZBkCGw8PcSuhehDzkd/1/uv7Z6XR/K
	R3G6iZuiAYNjg5XS3nlvN/xUml5VHAB5nPM7P0FO16/EOL3/Xjf6wHfKVEeQ3wr4+GjxIqIE/fO
	mNSRiuIhw3Bw/8v+DS3NrdR+eU5ZaLANDZux2VXgCDqHmDtB+wbVpYIaW8s2s68ragyirv
X-Received: by 2002:a17:907:9486:b0:b73:572d:3b07 with SMTP id a640c23a62f3a-b942dfb4369mr108342766b.28.1772793429277;
        Fri, 06 Mar 2026 02:37:09 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8ad0fsm46007966b.19.2026.03.06.02.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:37:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 06 Mar 2026 11:37:08 +0100
Message-Id: <DGVMTLXR7VVA.3UCTHBGDDIKL7@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, "Luca Weiss" <luca.weiss@fairphone.com>, "Taniya Das"
 <taniya.das@oss.qualcomm.com>
Cc: "Georgi Djakov" <djakov@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Stephen Boyd" <sboyd@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 <phone-devel@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: clock: qcom,milos-camcc: Document
 interconnect path
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
 <20260116-milos-camcc-icc-v1-2-400b7fcd156a@fairphone.com>
 <20260117-efficient-fractal-sloth-aaf7c2@quoll>
 <59d9f7ff-4111-4304-a76c-40f4000545f5@oss.qualcomm.com>
 <9f8619d4-43ac-4bc0-9598-c498d59a27b8@oss.qualcomm.com>
In-Reply-To: <9f8619d4-43ac-4bc0-9598-c498d59a27b8@oss.qualcomm.com>
X-Rspamd-Queue-Id: 8EC6021EDFE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271985-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Taniya,

On Mon Jan 19, 2026 at 11:28 AM CET, Konrad Dybcio wrote:
> On 1/19/26 11:20 AM, Konrad Dybcio wrote:
>> On 1/17/26 12:46 PM, Krzysztof Kozlowski wrote:
>>> On Fri, Jan 16, 2026 at 02:17:21PM +0100, Luca Weiss wrote:
>>>> Document an interconnect path for camcc that's required to enable
>>>> the CAMSS_TOP_GDSC power domain.
>>>
>>> I find it confusing. Enabling GDSC power domains is done via power
>>> domains, not via interconnects. Do not represent power domains as
>>> interconnects, it's something completely different.
>>=20
>> The name of the power domains is CAMSS_TOP_GDSC (seems you misread)
>>=20
>> For the power domain to successfully turn on, the MNoC needs to be
>> turned on (empirical evidence). The way to do it is to request a
>> nonzero vote on this interconnect path
>>=20
>> (presumably because the GDSC or its invisible providers require
>> something connected over that bus to carry out their enable sequences).

Do you have any details you can share for this discussion?

Regards
Luca

