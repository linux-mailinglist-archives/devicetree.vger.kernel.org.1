Return-Path: <devicetree+bounces-276389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJf2K6JsuGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:48:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F1C2A05EE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:48:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 32DF83099EBA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0AD351C1C;
	Mon, 16 Mar 2026 20:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="D9BOaNWb"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9083B2264AB
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773694071; cv=none; b=ktdy+L/Er8xzVli2J8kwIiFeuNnBCbgBLPgfwPi+6NCXEo1q61VbWMVo6n423+IQNuOv3iGuSf35d7TIDkysQsfva0qnD8QhBrVuvC96zOxJTVXRh72gxJqyiOn0fRR3M34IeApA7hcvy/M8qoQ/b0XdUGppTO3HHl/mmHu7CVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773694071; c=relaxed/simple;
	bh=zpZPh7MVkXazG9gfyuhBJfvdwjMHQiGgQjLIRZhQeUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lJMiajLHEhCAX/PTvaNiY4jJWmgYhP5MmlB3ZTYoe2PcgKjJ2b0GAG6ozsrY5d/NDLvWosV885NVmR0RidKYmyY7oRWWuqW4VUNT61xv7MENVLhzq4ninpbLus620JXGXLVwP4WHpbjTpTFfVeSTG7y12lITQlLWgevGl0J3PbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=D9BOaNWb; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
Message-ID: <4b91b06c-2a88-4e6d-81db-0a7bb4972e1e@packett.cool>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1773694057;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mi/x6909YiGRcC2bZJ0F/Z+WJHSsUo0EFS93H/21pfc=;
	b=D9BOaNWbySw8h+lDQULyN5xxkjjxTPt52CPac6mmxZ/qak2qmGsSAsN4gcWhyjO7cUqnTB
	9QFGYPyrz+TOX4wNvWgRYCS6DrGzm5MZb2WSmsDE9XD6/Fge5/QUsbMVs9RNGsbi6OdZrj
	GaEJ9jsR7oWw/CGc6uYIZbVFx9UtrJ3txzK1Ij+hvnZrWZNBqVPBJwETJ7oIWkrQaLDnwb
	BbgGVVGTV0jPXifvrhzdolmCMuaQtaq/juv9vt5gYN9kVsbsWify3DYjABLlImyOFfKbto
	hFtte/ocueUlwzUtJ3w6lPuPpvf+cws9b4+YpNu5yuobB0R+1jOUBnSHBgxYbw==
Date: Mon, 16 Mar 2026 17:47:13 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao)
 DTS
To: Stanislav Zaikin <zstaseg@gmail.com>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260305093941.305122-1-zstaseg@gmail.com>
 <20260305093941.305122-3-zstaseg@gmail.com>
 <356110cc-699b-4a6d-973c-403d2e29630e@packett.cool>
 <168615a6-615f-46cc-b126-4780fec34ecd@gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
In-Reply-To: <168615a6-615f-46cc-b126-4780fec34ecd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[packett.cool,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[packett.cool:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-276389-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[packett.cool:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[val@packett.cool,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:dkim,packett.cool:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 15F1C2A05EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/16/26 8:57 AM, Stanislav Zaikin wrote:
> On 3/16/26 5:05 AM, Val Packett wrote:
>> On 3/5/26 6:39 AM, Stanislav Zaikin wrote:
>>
>>> Xiaomi 12 Lite 5G is a handset released in 2022
>>>
>>> This commit has the following features working:
>>> - Display (with simple fb)
>>> - Touchscreen
>>> - UFS
>>> - Power and volume buttons
>>> - Pinctrl
>>> - RPM Regulators
>>> - Remoteprocs - wifi, bluetooth
>>> - USB (Device Mode)
>>> […]
>>> +        vreg_l7b_2p96: ldo7 {
>>> +            regulator-name = "vreg_l7b_2p96";
>>> +            /* Constrained for UFS VCC, at least until UFS driver 
>>> scales voltage */
>>> +            regulator-min-microvolt = <2952000>;
>>> +            regulator-max-microvolt = <2952000>;
>>> +            regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>> +        };
>>> […]
>>> +&ufs_mem_hc {
>>> +    reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
>>> +
>>> +    vcc-supply = <&vreg_l7b_2p96>;
>>> +    vcc-max-microamp = <800000>;
>>> +    /*
>>> +     * Technically l9b enables an eLDO (supplied by s1b) which then 
>>> powers
>>> +     * VCCQ2 of the UFS.
>>> +     */
>>> +    vccq-supply = <&vreg_l9b_1p2>;
>>> +    vccq-max-microamp = <900000>;
>>
>> If this device has UFS 3.x flash, which it most likely does, the 
>> copy-pasted eLDO comment does not apply.. and VCC range is 2.4V-2.7V, 
>> 2.95 is overvoltage! 
>
> Hello Val,
>
> Thank you for the review.
>
> Though you're right that this comment is a copy-paste, taoyao has 
> ufs2. This is the explaining comment from the downstream sources:
>
>> /*
>> * Yupik target supports both UFS2.2 & UFS3.1, here
>> * vccq2 is supplied via eLDO, [..]
>
> So I thought it's better to keep a small comment regarding eLDO.

That's a comment from the qcom reference sources! I've literally seen it 
already in the downstream DTS for the device I'm currently working on 
(motorola-dubai) which definitely has UFS 3, hehe.

You can read 
/sys/bus/platform/devices/1d84000.ufshc/device_descriptor/specification_version 
to see which UFS spec version your flash is (0x310 == 3.1 etc.)

(Lots of interesting stuff around there, there's also health_descriptor 
that shows your flash's wear estimation..)

Also if you have the schematics, you can check for whether an LDO is 
actually present there and whether VCCQ or VCCQ2 is connected :)

>> If it's actually UFS 2 after all, it would be better to rename the 
>> property to vccq2-supply.
> Could you elaborate please? Do you mean l9b? 

No, the "vccq-supply". If you look at 
Documentation/devicetree/bindings/ufs/ufs-common.yaml you can see it 
supports both `vccq-supply` and `vccq2-supply`, the former is used for 
UFS3 and the latter for UFS2.


Thanks,
~val


