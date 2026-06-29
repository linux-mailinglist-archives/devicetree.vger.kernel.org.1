Return-Path: <devicetree+bounces-316613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uL6iDcjqQWoQwAkAu9opvQ
	(envelope-from <devicetree+bounces-316613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:47:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F976D5B73
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:47:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NWzyDcOi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316613-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316613-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5168A3002D0D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 03:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1021282F20;
	Mon, 29 Jun 2026 03:47:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EEFFBA3D
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 03:47:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782704834; cv=none; b=SjmTYDlHjACch0Kl1pKe71X7IgsCct6Ng5AEYd35QzdhlEjd1xO0BCFLg6hZNuJfEPhadv7uDEK0uUPDCe1LAHgPVUjp9X903au5JacZb21A+6MYVKuEovjpbn2KbbaKn2AgJwP74kj1sUKQogQi/ctJGgKUcT/SdMsbxtTyJPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782704834; c=relaxed/simple;
	bh=5PshR+IvyLF9JmCnWECgYoo5CmXC1kxLnDlSDUXXqWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FRV8W8foucgK2AENSfHMyUFXXYCxtVPnKWbSK66/O6Lb+OCLxQruGQ3O6dK0jLams+kSq5+aW0oRlWNMvGM9gjyuFan4Jbfw0U4xLXnDO40llXLKIREXflKnSU0TvltYXm9vfP4dkbU4nRrcYAIn8Syn17utHKz1Gxk36alqCIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NWzyDcOi; arc=none smtp.client-ip=209.85.216.47
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-37ff798fe89so383488a91.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 20:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782704833; x=1783309633; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z4glFEoTlSdEvWgu5Qz9SrofqHmqDCDT1GO9md08oew=;
        b=NWzyDcOi7LUY7WIqJISxWh0SV7sQtBcXfYNRruamqewDVFtfHDCIZleBx9sYOEeEvF
         iS/4K4qsc2ZKiUslQq+85XzO7vXtxcng/FA4z69/vA7tm7N7g1+yb2K8Wz/cogW/Zjsq
         uYmTSZpWASzEKAR4rrzZtJw4L0j2r/pf6H3WgqWTGhJ8zCcMCklFHLORFRQ9454yUzWL
         So2DCyCxSnT4n91TD9ys6J5FaSITnkw+TWTx8nTkPauvEGjIjjC6mnqA8Z7jXAPdwzdj
         Xu5uKcZtXeGZOe1SwwkiNFu8cUTQ+CRn1wSuF8lzPNXZvQCs/as9/TFOWGcPohrPGRGg
         jWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782704833; x=1783309633;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z4glFEoTlSdEvWgu5Qz9SrofqHmqDCDT1GO9md08oew=;
        b=i9I4XW7XthVa+Vb1IjoFAOYNgbRzbxcqOcHlZJhvfITNY3zkucb68L2ougt0XZRCNN
         pK+x9Il0Dg6fC80b9bXPayOS4x8hvAkk6itcfJdu13CDEQtl7hjPEZtbDFAR3fw1O2oj
         Ldwhq1Xa9iu4j12DC7uLDldvmD5QVAJVDsKmEvtOECfktmCdx0LVYR2qrCWBALFUPwZB
         8Wtyl3pwAngbU3YZQcLqtk39rneQv3X99h8XhUiWBKhokbC2craDoy8xiQnKAsImkeBC
         mbudQcUMytRcxaWzoX6YnU+XkgKu2wbRQ0CV/fmlbOEpWR9pSrfccl4yuEsPM2YNBjZ5
         Dd2A==
X-Forwarded-Encrypted: i=1; AHgh+RrUdW74+lOE5Bdq3lUGLoTk+Jinze42n+wtQ0SarcDvo71wNZrR9IxTOUOahmPA6DtVEKOykgjRuR6s@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqh8WCdcOPOMepf5zP9Os//f6ustv7soVXtjzLywinDVWnZTAe
	3/XmOZj5Mv71ZaKBmyjne4l3gPUwiK9EW96cVmsN1a40KMgsnInFKOIn
X-Gm-Gg: AfdE7clO3OGtAo17XWhhBaTAnq7w273nU57Nt4gIv4MfOGLchWh+aqYZFK6OKDRcTVX
	kjMrXknSrgyPe8OljlqaKLc1yuUd36VRogV7yhDD58UVpqSFVoK7pA5TVEXRdvvjaAfH8h6ehgK
	5CQy1EcWHYZvG9m+KHbNDYOWfVjwISbWLBP7lSZsA2VZsNnsf9LC4MZJ+nAP2zuFyxVy8gAc5T7
	VfIfAY+oRB30Rv64gWXJuMT3L+FwGPMMo1QhArXzx9zprjhAzsUwmBFmX9ibdR4E5mTrAqpWXe1
	1lYwcz+EwFOpUCiUpzbqvztR1760StLogHwJwST0sV1O/U6OfDEphHcrWIaI/BU9nDStdSB952m
	D3Pc/2XgH8PcaEhH4Jk3FM7dXtpckZbbiPRix85RG2jAbqeMDfZ1svJkKynugH1/RK8Q/Yk8Rqy
	7U5ySxOs9ztDW6tNich8WWCS0Ep56aLVxMluGdKd6BxkeWrJu/H7ZzT2dDBVT1OA2CrQ==
X-Received: by 2002:a17:90b:28d0:b0:37f:9ce3:ca92 with SMTP id 98e67ed59e1d1-37f9ce3cb4emr6630306a91.27.1782704832538;
        Sun, 28 Jun 2026 20:47:12 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37eaff87f61sm4687705a91.17.2026.06.28.20.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2026 20:47:11 -0700 (PDT)
Message-ID: <b3b7a0f8-93a8-4965-a2f3-3ca1552a25d6@gmail.com>
Date: Mon, 29 Jun 2026 11:47:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] dt-bindings: display: verisilicon,dc: generalize
 for single-output variants
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
 Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260625094449.708386-1-a0987203069@gmail.com>
 <20260625094449.708386-2-a0987203069@gmail.com>
 <20260625-bobbing-annotate-d1c4d6874ee2@spud>
 <e3fe23ddbc504879bd797bbaa595d3653fa139ff.camel@iscas.ac.cn>
 <20260626-astrology-mural-853d3860e048@wendy>
 <c0731801729713d35f97bec40ebc21cef31b72b5.camel@iscas.ac.cn>
 <20260626-everybody-epilogue-8fb298a54981@wendy>
 <9456bde5059bea3aac1ed64355e3f017dd9bd3e5.camel@iscas.ac.cn>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <9456bde5059bea3aac1ed64355e3f017dd9bd3e5.camel@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316613-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:conor.dooley@microchip.com,m:conor@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 37F976D5B73


On 6/26/2026 5:33 PM, Icenowy Zheng wrote:
> 在 2026-06-26五的 10:26 +0100，Conor Dooley写道：
>> On Fri, Jun 26, 2026 at 05:00:35PM +0800, Icenowy Zheng wrote:
>>> 在 2026-06-26五的 08:19 +0100，Conor Dooley写道：
>>>> On Fri, Jun 26, 2026 at 01:27:21PM +0800, Icenowy Zheng wrote:
>>>>> 在 2026-06-25四的 17:33 +0100，Conor Dooley写道：
>>>>>> On Thu, Jun 25, 2026 at 05:44:43PM +0800, Joey Lu wrote:
>>>>>>> +allOf:
>>>>>>> +  - if:
>>>>>>> +      properties:
>>>>>>> +        compatible:
>>>>>>> +          contains:
>>>>>>> +            const: thead,th1520-dc8200
>>>>>>> +    then:
>>>>>>> +      properties:
>>>>>>> +        clocks:
>>>>>>> +          minItems: 5
>>>>>>> +          maxItems: 5
>>>>>>> +
>>>>>>> +        clock-names:
>>>>>>> +          minItems: 5
>>>>>>> +          maxItems: 5
>>>>>> All the maxItems here repeat the maximum constraint and do
>>>>>> nothing.
>>>>>>
>>>>>> Since you didn't change the minimum constraint at the top
>>>>>> level,
>>>>>> your
>>>>>> minItems also do nothing.
>>>>>>
>>>>>>> +
>>>>>>> +        resets:
>>>>>>> +          minItems: 3
>>>>>>> +          maxItems: 3
>>>>>>> +
>>>>>>> +        reset-names:
>>>>>>> +          minItems: 3
>>>>>>> +          maxItems: 3
>>>>>>> +
>>>>>>> +      required:
>>>>>>> +        - resets
>>>>>>> +        - reset-names
>>>>>> Both conditional sections have this, but the original binding
>>>>>> doesn't
>>>>>> require these for the thead device. This is a functional
>>>>>> change
>>>>>> therefore and shouldn't be in a patch calling itself
>>>>>> "generalise
>>>>>> for
>>>>>> single ended variants".
>>>>> Well yes they're required.
>>>>>
>>>>> Should I send a patch adding the `thead,th1520-dc8200` part of
>>>>> the
>>>>> schema?
>>>> If you mean the code above, no. Adding a conditional section when
>>>> there's only that compatible doesn't make sense.
>>>>
>>>> What you could do is just add it at the top level though, which
>>>> would
>>>> also benefit this patch since it'd not have to be conditionally
>>>> added
>>>> for the new nuvoton device.
>>>> Just note in your commit message about what the ABI impact of the
>>>> change
>>>> to required properties is (effectively nothing because it's
>>>> optional
>>>> in
>>>> the driver and the only user has the properties).
>>> Okay, I will craft such a patch and send it.
>>>
>>>>>>> +
>>>>>>> +        resets:
>>>>>>> +          minItems: 1
>>>>>>> +          maxItems: 1
>>>>>>> +
>>>>>>> +        reset-names:
>>>>>>> +          items:
>>>>>>> +            - const: core
>>>>>> This is just maxItems: 1.
>>>>> Well the implicit rules of DT binding schemas are quite
>>>>> weird...
>>>> I don't think it is that strange, as the binding has
>>>>    reset-names:
>>>>      items:
>>>>        - const: core
>>>>        - const: axi
>>>>        - const: ahb
>>> Ah does the list constraint the order of items? If it constrains
>>> the
>> It does, yes.
>> Alternatively, using an enum permits free ordering.
> Ah in this case this should be converted to an enum, I think.
>
> Should I send a patch for converting it?
>
> Thanks,
> Icenowy
Thank you all for the detailed review and discussion, it really helped
clarify the right approach.

Since I will supply all four clocks with the same phandle for core/axi/ahb,
and only one reset "core" for MA35D1, the ordering constraint in the
`items` list is not a problem, "core" is already the first entry. There
is no need to convert to an enum.

Regarding the clock situation for the MA35D1: I agree with supplying all
four clocks (core, axi, ahb, pix0) in the devicetree, even though the
MA35D1 clock controller gates core/axi/ahb with a single bit. The DT will
use the same clock phandle for core, axi, and ahb:

   clocks = <&clk X>, <&clk X>, <&clk X>, <&pix_clk Y>;
   clock-names = "core", "axi", "ahb", "pix0";

This correctly models the hardware topology. Since all three names resolve
to the same underlying clock node, the CCF's standard enable refcounting
handles the shared gate correctly without any custom implementation needed.
I will also revert the change in patch 4/7 that made axi and ahb clocks
optional, since they will now always be provided in the devicetree.

Regarding moving `resets` and `reset-names` to the top-level `required:`,
I will wait for Icenowy's patch to land before sending v6 to avoid
duplicating the work.

In v6 I will update patch 1/7 with:
- Update the subject to "dt-bindings: display: verisilicon,dc: add
   support for nuvoton,ma35d1-dcu"
- Lower `clocks`/`clock-names` `minItems` to 4 at the top level
- Remove the `thead,th1520-dc8200` conditional block entirely
- Keep only the `nuvoton,ma35d1-dcu` conditional block, using only
   `maxItems: 4` for clocks/clock-names and `maxItems: 1` for
   resets/reset-names to tighten the top-level constraints

BR,
Joey
>>> order, it partly breaks the intention of having names; if it does
>>> not
>>> constrain the order, it needs to be clarified that the required 1
>>> reset
>>> is core instead of the other two.
>> Given the discussion we're having on the clocks, I wonder if this is
>> also an oversimplification and the IP has three resets inputs hooked
>> up
>> to one output of the reset controller (or 3 outputs controlled by one
>> bit..).

