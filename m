Return-Path: <devicetree+bounces-276129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BPrLvftt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:48:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A296298E87
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:48:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C4643043D7D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FEB38229B;
	Mon, 16 Mar 2026 11:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UafhMnV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9D9361663
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 11:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773661578; cv=none; b=nFxVDyA91rGDwEUfgN/J4HW0DG6e7TSzB+Ecl8hBA4yFhH0o8IZBHlLxzZ87UhcrvRJ6+7DZtnK/f1ZlSK8H0w8xUjZCq4JRcYRqbZNueD43IhQyyfCDH1sTUlmP4WVQXygo8a6h5ziRQqZETjkTbscMWxa6IVZ5Cwlt8Km7Rvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773661578; c=relaxed/simple;
	bh=t0UWARUSQIntvS5EQqzPkbi+Hd0LBfFlP1/hLID1nv4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MuDvmh+EHONWQcid0YeQCP8eJcR47iGYQvD0sw43HAgvySDYmYJhNaSBWgQAGPR2Dwt5M8jnD+9BhKOSAlw8yCbd38bZOlRJOu2qIUnrgcLZk+YzdXMvEfXpjmrTdPq8vFEd9dXn3dgog+QU5iSn7mKnXnsLHyLosIFRX0Yddps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UafhMnV8; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439b9b1900bso2886247f8f.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 04:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773661575; x=1774266375; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x1U8dBcXftg91m8krbPj5U4vCS7fs7JNcgP35ukPw3k=;
        b=UafhMnV88sPBiRV8VWtoYp0Vdq0ugCdeijQ4Ab688lEFHwbjSihbcGoWLPbLvgCBar
         UAIAw8/X95/dkdtRwpiIt/8d9K/3uyt/ASvI+XxgCsiMYwcpgVLICDUaXkwXo7DNVqKK
         eHswnl5GACcp3shODw3VuLX84Vyau4WPYzB/PkeGUmNprXgHpD2sKkCWu3nn/+D1HGQk
         cRmy4XuBlzN5nFKBR3nF952KytcRwtuoic+jSPy1eMbeUA4giREfPY+rewIfAatyjeth
         F1Gntrp9VUm+gZf4abwpRiiG+XAheXfwxTotJh3NhEVUS9eOtEZXYAlz/lXjgkzTxfYI
         4/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773661575; x=1774266375;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x1U8dBcXftg91m8krbPj5U4vCS7fs7JNcgP35ukPw3k=;
        b=jAWWTvEawULtjhkQfjom0uPoxIK5ctc3+NaLjU3dN5l7bOyc2NysDraP3dnqyQIjzR
         GprENwsdXbidSc/7r+tuYLI6uIToh5U1t5f3CRwf9mZWdwFiQ2wPblhpjlTLhsertmCy
         iUSPGlRxw8Hkx9vvjsxQiz9kSJMbOBO5aZL9bukZ23oYDmxGt8Fc4k7p4JHOCY1qa5s5
         cI2GCF8OO8+RjtDJKmZoTMi99ntjb5TnuBylKly9KKOmTZmFmnOLRmMn1Lm19/oMKb6q
         jMOkC27kEZO4PBYYT0NZP1i7VRnA+HWWFsqOiImVsJ2C+U+8HC5PnG3Ia2Vav53gXGCQ
         FtAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXN+YMWlOztoa28W1l+Oxlh9++B41xvqtE0LxhJm8by+zDYv7JBZvemqIoK3qoEfvYiOccpqONX94KR@vger.kernel.org
X-Gm-Message-State: AOJu0YyNBCtd5QnvsPv9rCLGsw32yru3CCIvMLjCuK9iXkFWQE7IEBXu
	4MbD+vRSELZajmhFLspEgabmUfXzHsQ0FdNWrliuyblDLQkUZM9kIrsq5Ui9zgTu758=
X-Gm-Gg: ATEYQzw9unVHiuJGKxxdtPDTJZHDFAB5wLK1xYXrsbxNz0ELYuU2ht86aT3dlJu9a2o
	S6pKsWupY64k6oZhe+LCAhrm5DDCq+8gLP+OLflQSiAjp+/H/xbs0/NiI5+7h1yahrpy7WhtC3K
	eCvsrRnN1bmX2IkH3odqzPc37qmYGiHs3XFxj2+Ejh94iF6zW/i3ubvlDSbI2cnpoWWWoYMNIL2
	UQtwAxOMGD7d52/9+qWuhWaihcj+6Qooa5xcjyJlbhRwhhr/noqt53lAmPJV3mL7yP5ZFcwBFzI
	haWl9ZDpcpxOe75Eu9tCr4glshyMLYxmxLfEWW2BcQIgY5kNds0MspUxtjOnfp/cnUWAERHPzJt
	R6AsyWk1Pwb8toxqePGgll5f5uYE95ORfDVfxofnfSaZ/ODypH8xPL3WMaFHoDrwan+Q8kONGwP
	8vQnkvP3Kr4R8iWWwf254TU+I3wVy919C40lKm
X-Received: by 2002:a5d:64e4:0:b0:439:afd8:621c with SMTP id ffacd0b85a97d-43a04dc8beamr22544441f8f.55.1773661575026;
        Mon, 16 Mar 2026 04:46:15 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.226.115])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43a0b2db487sm25277470f8f.28.2026.03.16.04.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 04:46:14 -0700 (PDT)
Message-ID: <f5c0c9e0-78c4-4c54-be10-c252715c36dc@linaro.org>
Date: Mon, 16 Mar 2026 11:46:13 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add ov02c10 RGB sensor on CSIPHY4
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
 <20260316-x1e-camss-csi2-phy-dtsi-v2-10-859f3fa55790@linaro.org>
 <b8d00023-ebe1-4abe-82ef-c8dc20f333dc@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <b8d00023-ebe1-4abe-82ef-c8dc20f333dc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276129-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid,x:email,0.0.0.10:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 3A296298E87
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16/03/2026 08:28, Neil Armstrong wrote:
>> +    ports {
>> +        /*
>> +         * port0 => csiphy0
>> +         * port1 => csiphy1
>> +         * port2 => csiphy2
>> +         * port3 => csiphy4
>> +         */

Hi.

Thanks for the review.

I think the above comment probably isn't making this very clear.

port0 => csiphy0 => msm_csiphy0 in the media-graph.

>> +        port@3 {
>> +            camss_csiphy4_inep0: endpoint@0 {
>> +                clock-lanes = <7>;
>> +                data-lanes = <0 1>;
>> +                remote-endpoint = <&ov02c10_ep>;
> 
> This is quite wrong, with the PHY in a separate node, the lanes layout 
> has nothing
> to do in the "controller" ports since the sensor is connected to the the 
> PHY which
> configures the lanes functions.
> 
> The PHY should be a media element in a port/endpoint chain to properly 
> describe the
> data flow from the sensor to the controller.

If I am reading your comment right, we are already defining the 
data-lanes where you've said they should be msm_csiphyX below port@X 
here maps to msm_csiphyX in the media graph.

So for example here is how we configure this before and after the 
changes in this series

media-ctl -v -d /dev/media0 -V '"ov08x40 
'2-0036'":0[fmt:SGRBG10/3856x2416 field:none]'
media-ctl -V '"msm_csiphy4":0[fmt:SGRBG10/3856x2416]'
media-ctl -V '"msm_csid0":0[fmt:SGRBG10/3856x2416]'
media-ctl -V '"msm_vfe0_rdi0":0[fmt:SGRBG10/3856x2416]'
media-ctl -l '"msm_csiphy4":1->"msm_csid0":0[1]'
media-ctl -l '"msm_csid0":1->"msm_vfe0_rdi0":0[1]'
media-ctl -d /dev/media0 -p

Its a NOP change from user-space's perspective. CAMSS has historically 
used port@ to map to msm_csiphyX - taking logical elements and 
configuring pieces of the CSIPHY and CSID based on that mapping.

Other examples of this upstream:

/* Cadence CSI2RX */
/* Sensor */
camera@10 {
     port {
         csi2_cam0: endpoint {
             remote-endpoint = <&csi2rx0_in_sensor>;
             data-lanes = <1 2>;
         };
     };
};

/* CSI bridge — NOT the PHY */
&cdns_csi2rx0 {
     phys = <&dphy0>;
     port@0 {
         csi2rx0_in_sensor: endpoint {
             remote-endpoint = <&csi2_cam0>;
             data-lanes = <1 2>;
         };
     };
};

---
bod

