Return-Path: <devicetree+bounces-275293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GC5gO68YtGkihQAAu9opvQ
	(envelope-from <devicetree+bounces-275293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:01:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA5828468D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:01:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FCAC3166C50
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04738320A24;
	Fri, 13 Mar 2026 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="FSGfmcBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4597231F986
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773410465; cv=none; b=WlXbnB/ZDT7xNDfICxxr4ir9jhYKyXo8g8XmByLrQn4NXhEW3OwOGO+rnLyDiJO/tUs6L6tMKqV/ODqSmfrP8M35QlqZ/EquNZQ/bQwVo1jWH8wrLhF88Tk0OedxGgvD8m6md3QnMoLuUjOtG6eJdaBGlGHveAxgRkMg/gzNDgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773410465; c=relaxed/simple;
	bh=X2YXoo5oelC/yO2ZVmRm/ASMJDAS7BiQnBAfPRY5clk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=tmsM5vf3NnCAsHRRzGYhmNGGMu7hG1V8KsXK1F+8GPUuLbp5gnQuQhs+SSiwFFFow/xge63QY591LaNO88tPN06KkVlrXaKBRE2leB0At5TeABW9WCmQFPKMn6utV6qqkAo6Co/pGMtmdzxMw2thPYWmY2hm9I0UVPa7leNm2CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=FSGfmcBH; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6642c9254c2so945744a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773410462; x=1774015262; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhAra/BMCH0n/XOw/db/nSkVgG1PExpVOvX16LQ7Y04=;
        b=FSGfmcBHqRtqrE7Fk18MOZx9o3FRpU7JxXWfxQoDokwxTzBwpFV3FACYRbxijp1lHw
         HN1u8NCEBF0A+6KUT8hTJyYkr8enWR0xf3gJv+8OzxPe4ZL1TehJPSBzE//uzzFayQwv
         vc97UoXGtsd0Qopxc0vbApSx1leL9jfuve5DF9f8x2hAfxsxe58HpHV6r7JYLhXPcRif
         WHy03mKAG3t4wk40TJa+2ifSq1Hup2QDLRlXHiJhzsFipldhnahEKpTwLHU1N/Tpw5cd
         MlN01FhH23d4OHBNdDbheLyt7EKMpNo9ZSzhRUYfXo05JqoAbYYA8Ei92lbgeVdToMQ0
         uJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773410462; x=1774015262;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EhAra/BMCH0n/XOw/db/nSkVgG1PExpVOvX16LQ7Y04=;
        b=pSnHDnM4UdcloRhmL6Aa+iBG5Oo4He9ALq1+0MkXHl/ZIjbes3t7opTwrnjLvD3quv
         Cg+AP7j/rZIYXyS2r+ngFvTzZmvfsySPbkeL7JBG1Z9qzK93DDXGpFdKNmF8R+P+QpdW
         qupDfzkDNjjx0c5WF0aSySoCXQignvAc+WmWPiKVEV+0IRPtyXmGULqs24sHxBcRjn9f
         fv+rIgImi2bJYVkrcVR5+MutssXxTy/6USbazNnwNcOmGWThPX9V+J85P0caBexBbZel
         sl8o/98NTRCb3lY8FynMKsQNfAa21q7tNhs7XzR/EeUxcgHooTXqgpL6G9kUKDCrwGOR
         cfZg==
X-Forwarded-Encrypted: i=1; AJvYcCVvMGokdO/Wcknx7zbTaTGBkq78osSCVDyrZv7td+87mwMDGbubE6FpUySjX3KjMoTiB4A2zxOOT2rI@vger.kernel.org
X-Gm-Message-State: AOJu0YzhXRHKkl85Z5Tl+CfAxllbYuk0xliIlTo7JlOfaw/2wLTiBcT7
	NA2TfB8ZG+IY/YxSuWL17rvpeEygnOIE7lCxmqXAGz3LcnaV8X5LP3+BUFH4lJkO/P8=
X-Gm-Gg: ATEYQzwXuXJijy/8rMMFg0z03HA0VojzfekpwhrSBqACB8yuGsUkXfjyEerIP5sQ646
	oBOSTeS1rKCA7tn+yatLFzj4g48oW/ZVTXN3LHO0s8Z0BKGoCWPr5qTnaORhkIFi0NDAAPvDPn8
	YJmAHj1q5lDHYnr6aXBy5YI39yEV/RmWbMzrBRx3Dl/cNYN54YpJhs7c2woHW1453cHEcektNsy
	TkDu+B1LcnDJDM8zGSaAxijVWXOtROU3LYSjTmKAM+YcTqHoDG4gGCE2H06DQjNnts5KALE7xc+
	4Mho4mNusqPeooINpbKnCj83fFiGr+xiIG9Dwyiy0iQ1gN/Sw5XAQQBiIzWnwcavRmvR5SFzp/E
	O8a64RqJIYIL+vwj0v0i5kFq+hsCOpa8ZqOjGd8vJmV1bdc+IZtDRuo/jUW8nXefmL8ayzjBTtu
	zhpbJXDWAQNmTznVJeBVDss8UKsBqKBmnNIeJfsbMQIt20yDKnFWDbexTsp8u8YLnPqgsK
X-Received: by 2002:a17:907:7421:b0:b8e:d4ed:5eab with SMTP id a640c23a62f3a-b976534655emr128493966b.31.1773410462146;
        Fri, 13 Mar 2026 07:01:02 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba2e01sm48940266b.9.2026.03.13.07.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 07:00:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Mar 2026 15:00:53 +0100
Message-Id: <DH1PJFGWESQU.1OEKLN0CX3IZE@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: milos-fairphone-fp6: Enable
 Bluetooth
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Alexander Koskovich" <AKoskovich@pm.me>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-4-27b4fbb77e9c@fairphone.com>
 <52fffc84-2fb5-47aa-835c-b0dd8c110d59@oss.qualcomm.com>
 <DH1L9UD68SKL.21KTH1XGR724Y@fairphone.com>
In-Reply-To: <DH1L9UD68SKL.21KTH1XGR724Y@fairphone.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275293-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Queue-Id: 5FA5828468D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Mar 13, 2026 at 11:40 AM CET, Luca Weiss wrote:
> On Wed Jan 21, 2026 at 12:52 PM CET, Konrad Dybcio wrote:
>> On 1/16/26 3:50 PM, Luca Weiss wrote:
>>> Add the nodes to describe the WCN6755 chip with its PMU and Bluetooth
>>> parts.
>>>=20
>>> Thanks to Alexander Koskovich for helping with the bringup, adding
>>> 'clocks' to the PMU node to make Bluetooth work.
>>>=20
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 174 +++++++++++++++=
++++++++
>>>  1 file changed, 174 insertions(+)
>>>=20
>>> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/ar=
m64/boot/dts/qcom/milos-fairphone-fp6.dts
>>> index 52895dd9e4fa..cbe1507b0aaa 100644
>>> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
>>> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts

<snip>

>>> +	bluetooth_enable_default: bluetooth-enable-default-state {
>>> +		pins =3D "gpio53";
>>> +		function =3D "gpio";
>>> +		output-low;
>>> +		bias-disable;
>>> +	};
>>
>> Not sure if we need to drive that pin.. perhaps a pull-down would
>> suffice?
>
> I'll give it a shot, this pinctrl is coming from downstream but perhaps
> the downstream btpower.c driver is differing in behavior to the upstream
> PMU driver.

Seems to work, but honestly I'm not sure what the actual effects of this
change are?

-               output-low;
-               bias-disable;
+               bias-pull-down;

Regards
Luca

