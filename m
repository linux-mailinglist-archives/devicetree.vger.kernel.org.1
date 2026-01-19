Return-Path: <devicetree+bounces-256607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF21D39C26
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EFD2A3007211
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 01:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FACB2153EA;
	Mon, 19 Jan 2026 01:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="iQk+BgU6"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1F1E531
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768787548; cv=none; b=A0pXoHSzt84NMcXtrlPkhctV6+dwOOMz8bIGm7EkHUbGbfyr6mS0vTo9AATB6RjjWaQz0H5xcG9B6oWHMIasvAiHLR1q9bpmTzg0ASdLWJqmVpdTsH+msjJDB1zRkQUHgtEi01iMG/9GWtNHu6/EqLLgHQxk3Tw+I0I006NcN+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768787548; c=relaxed/simple;
	bh=2JfXxdzuJik+6R2hRw4kNAnkpaUr61vrb3OYsF22VKo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GNEvhKoLJIji5v2/VyPu7B9jKi4AMsagpH4IsGwwgTQSueabodao1JxMEfqWlh27szC+F8BpKEVY6rzfpfWSRDWeIu7XJ0teabdR1ZmW4wALnmkysJDrbMGMNtgpXiPseFlByngJ0/A1/WsP/34rF3dphczZIpKDUkq8wrSln8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=iQk+BgU6; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <97f2df84-863f-4a0e-93ba-6ded233712c8@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768787534;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=c6vbjraGHTwor/ljn0zgH3htgd4xc6/rrmrlUSwu+PQ=;
	b=iQk+BgU62ZcWsQ+gY1msOCkPr7fDJ3Mjr2YiFgdcUdnpBYNmmSeNP/OeVi58lKzqYuVqcS
	YSvsb0cpX/A2+2fJjk7oGK7pFhV/jtnEO1wIlq5cNAn2vG6L4gW22OvgHbNVfcbAZXBLUt
	rX23hO+Mr8JlNbnIEGfPasXPzQVoUf8J+DQyy1w53JEUwNNbyUfVY8RZKZKNH20wZ5PNlq
	V6juzCEV+8gVeT87rZpkyQTN5Liw4F4MvUSEU9I+kFeGli746qcO517GWuH0HGOlc5lnPA
	Da0KQ8/RcoqwqSdKzsrxLRGKdvByXiu5D7WKmP0+4pWPKIQ5Jtr4lc4JjT+eBg==
Date: Sun, 18 Jan 2026 22:52:02 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
 <782ed3c8-d031-4934-9a8c-6366abefbf7c@linaro.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <782ed3c8-d031-4934-9a8c-6366abefbf7c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT


On 1/13/26 6:01 AM, Neil Armstrong wrote:
>
>> +
>> +&usb_1_qmpphy {
>> +    vdda-phy-supply = <&vreg_l3c_1p2>;
>> +    vdda-pll-supply = <&vreg_l4a_0p8>;
>> +
>> +    /delete-property/ mode-switch;
>> +    /delete-property/ orientation-switch;
>> +
>> +    status = "okay";
>> +
>> +    ports {
>> +        port@0 {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            /delete-node/ endpoint;
>> +
>> +            usb_1_qmpphy_dp_out: endpoint@0 {
>> +                reg = <0>;
>> +
>> +                data-lanes = <3 2>;
>> +                remote-endpoint = <&hdmi_bridge_dp_in>;
>> +            };
>> +
>> +            usb_1_qmpphy_usb_ss_out: endpoint@1 {
>> +                reg = <1>;
>> +
>> +                data-lanes = <1 0>;
>> +                remote-endpoint = <&usb_a_connector_ss_in>;
>> +            };
>> +        };
>> +    };
>> +};
>> +
> <snip>
>
> Hehe, finally seems my work was quite useful after all :-) 


Yes it was! Thanks :)

~val


