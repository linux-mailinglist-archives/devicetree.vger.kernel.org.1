Return-Path: <devicetree+bounces-275288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJSoHGAbtGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:12:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 114D5284A7F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A162313B55C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9540A39EF36;
	Fri, 13 Mar 2026 13:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eqXivNjG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P84mf2gZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E946F39EF2C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773410187; cv=none; b=eRzOhi7q3SOVh01HmDy/lveg88zSTu43DDKn5ccbvtBdFVf6Qmjql18I/A4uY0/buOoNPbte/dUFfd3rd26pes+ql59kftk3vH+W6OQfgZFTixhceJcb02rb60w5EafLRPP5pqqJCSEjZcoz9r1LPM6Nt1hZpQnQPa+QaZcDCDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773410187; c=relaxed/simple;
	bh=yjkWHJy7sLVpTC7Gy9FlTAMMbnf8fMSgYA43ho59npI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fJxlWPbD96G+WySogWW3zHu4aCAk4rBjXkfs6m9RPT8MVm+OfGnw7jjOcEXh198trcOBcj6GlyYfHOWy4UpNemJUKWN1U/a1c6wybWjkpkDBRXVbFblhAg7g29OyVmxkHe3ihzVxA1r7FIq9sk6zxZNwAAxgdDXxR/buCV67YUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eqXivNjG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P84mf2gZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9B2MS3906270
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:56:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JWDPUhT3f3QOKIIpNpeDbXRxhsqIYqxLxuhtfPheVY0=; b=eqXivNjG6u331rwU
	6dV5q03ETDdNmbnRylVFDvLYCikLkor+joJgUGNYnh/VZ4oAjKBGpQ9MYGpCXFU8
	R/GTozKYE9jtBXrkNhMJAfnp3rybRpzMggTXoCnBJiYEsLO6qirU4dRHcaOaYlAj
	H/+lz3F4EBccoT1ntcCVr2Jym/KX2HCe/ZMiXWotk4J6TqP9+MSdiQ0Ne9sFi2lw
	W0blKGaXuMJDasZkbds3bnRzK5+cwUb4JRyDB7AcmCjphFG6HaMxkfjG55WxMJp9
	W3jwR9CUYk9iLzpftfTPgViwzDeY5/OQvk7LpalnLNO1h1017CarMA1GvwUsDZuP
	DgvkVA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfqs8wag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:56:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd8dc8b434so137313885a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773410180; x=1774014980; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWDPUhT3f3QOKIIpNpeDbXRxhsqIYqxLxuhtfPheVY0=;
        b=P84mf2gZfmb89rqHM4GwRDaaQeqzb8WCml7+dDtwhYVQ5a6gGNV7oE2GXMfs2CXT8v
         KDEg+0GUtcmbD5P0Cs8LhqDReSOUTQu0JR6nef0bYF0FLlvpbjlGq9QHbnrjRzx6WddT
         5BHvDlzgeGjPt/CqDqcYzh6oy5dm6s+9C9dFJJ8ktRlWWwDHkOI1rzgZs9oPg0ueLmBT
         QzK077SH+vAUp0dFNOYNjS7OpAKFDmANxGhrqrR2/cXJDKCyKvdXU7ZGqFa238StXKC0
         aojFNRAhGljxdV4W8zOadNFymhGIo0k5oyR7vSXx5f07LMvuxjsGPz5u6NCq+JN9ml46
         iviQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773410180; x=1774014980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWDPUhT3f3QOKIIpNpeDbXRxhsqIYqxLxuhtfPheVY0=;
        b=WAEsilTvr3847jqjv7+bd0TUzXK0GMv2eqmeuhaYjALLWKCle90i80Zi85ZfPoVzTC
         wLkXXSgOxudSbtDMu3rFAmIcKUI0rLLyBm/6Sj+527ohmM9DUoYl8LWR6srUzt7h7BKv
         RXhWItmmYZmy2cg5O/7kUojVlQHTWAk7vlIberFppfB1K9IKBYZVUld8XsAkF5+/1oE4
         aOvo4vdSC3CpwWQTgszZVJSHhhfMquInWGdm9yq7/i/18eO4tnlZr5Kokmnsx8EEYcbH
         gn5+puReXzj2kv/i5pBBaV2IC1A+Tah9c8YmmqmFAnWg1BHQCxgBD9SEbg2/OKKBjNXk
         iz3w==
X-Forwarded-Encrypted: i=1; AJvYcCWO/78FRWGfIWzNQjk8/KcHPyU8Utt6FvHQHENbSSvfMZfPn6rycrcD8yg9r8ybDnqOpUSRlmJQmifc@vger.kernel.org
X-Gm-Message-State: AOJu0YyPrv7XGMw1atCWlfxPzaN+4vwW+L8GWqRIsUV3FLqTgQrZs3tJ
	Tz1u4rf7pGS9m/1xdMjD5Y76n1DGJQU+PzE2ZVsxDbUqN66K78lkIQD4j64C+uz2r178e+MtIKi
	CV1/tZEA8G7ZmxouLi4xAndkztpQL902GIRoh9cm/olEmkphVmB1gY4GeUCTmx+DeKxMz1U6E
X-Gm-Gg: ATEYQzwfR+QHda5HF366XoEP6vEe6bWqY2GuZ64+LrrsZkZ79riZJbfmDqn0Y4bcTpz
	3j51nu1gYnLmvp3OCSTAn+oFmNuKhgYwETpjaCsScPmG9mD/w4Q/27NQW3ABHpwuGN8IBQSts/b
	WNUZkX523zeomejVETJLG6m4Zb9JqgOHFav9p8dURmbbyMI1+xwampTxFfn5v9fgku8CIN4vO9A
	Smbq3tOPVQXRq71ctQ5w0UW4B1J+b7pMeMFbDtdIjlNpyuIU+F/0e+GBmQB8I2hc2HmaPEbpjtG
	46xFpqo/ScSUuY/Z8c5UGmle8z8IYvxVseHPh8c6QWZgejSY8b05J0zzpACbeb1mLfAFtdKZM2H
	GyqXTglgHiBeHJ6xRHDRx7p+3trvBseKWlVgDslZsTZwb+yEIvSiO67tZHTQpjpcH4ZVd6+Nbk0
	Omp5U=
X-Received: by 2002:a05:620a:710c:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cdb5b61aacmr340930785a.6.1773410179853;
        Fri, 13 Mar 2026 06:56:19 -0700 (PDT)
X-Received: by 2002:a05:620a:710c:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cdb5b61aacmr340926585a.6.1773410179303;
        Fri, 13 Mar 2026 06:56:19 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350d73f14sm1282442a12.30.2026.03.13.06.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 06:56:17 -0700 (PDT)
Message-ID: <c9c3cb25-f37a-4270-9f84-f6e4df3ccbd6@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 14:56:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: grumpy DWC3+UCSI, usb-role-switch semantics
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Johan Hovold <johan@kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <8fabc049-7fdf-498a-a3ef-6f2570d510c8@oss.qualcomm.com>
 <20260311192118.hpf6nujgikytngvl@synopsys.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311192118.hpf6nujgikytngvl@synopsys.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LLvbE24Gc4HvA_73xzasZw2Q2utq3si_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExMCBTYWx0ZWRfX4NO1D7X7HcoU
 yWIi/+3h14qu49gSNOk3z+ZU0lLXWKBrCvOdJKdtfGcgcTokr7KuH1K2cqMSBl8fgkjQsqHotDD
 yc95nK3hJ6SpvZ3wCKP0zg/yGl6B+4dB+1Dfs0yIBSe46ZjK+qxy3B/J6IH4JLa1/2GFPLASoS9
 fxHouLBFiKsG81QBrET0IG/Ib/bfxPoukWqsJuyKthyi7vHRt6ac0B6E9bWLg3bPh+qVqnTXn9Y
 3C1YTcyRXKTRlYLRjXef2evyYFN8JGjBxLa712RV2yMBhVEoHAMrioVG5MefV0Fd8ByUWGlZg3N
 kPz8x07/5tjsnPKMJu3T068YNP3B06syNEDeX2PYBpRuNuUx7vGjO0i9IAtJHJfXa8PV77uPY7Y
 IJS6zto3Kn8by26Tf1aX5S0PvFiVXTuc5cmMEuF/2+0xbvaUofPywOI44btCpaP1CsUtasbxMG7
 OHaqwrHc7RxYWpk7iOw==
X-Proofpoint-GUID: LLvbE24Gc4HvA_73xzasZw2Q2utq3si_
X-Authority-Analysis: v=2.4 cv=GoNPO01C c=1 sm=1 tr=0 ts=69b41784 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=9Sy8I8J6VepcK3zmzJsA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130110
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275288-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 114D5284A7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 8:21 PM, Thinh Nguyen wrote:
> On Wed, Mar 11, 2026, Konrad Dybcio wrote:
>> Hi,
>>
>> The description for the usb-role-switch property (usb-drd.yaml) states:
>>
>>   Indicates that the device is capable of assigning the USB data role
>>   (USB host or USB device) for a given USB connector, such as Type-C,
>>   Type-B(micro). See connector/usb-connector.yaml.
>>
>> That to me sounds like a description of the capability of the on-SoC
>> controller (i.e. should/could be set regardless of device specifics),
> 
> That property description is misleading. We enable this property if we
> want to use the usb role-switch framework. This has nothing to do with
> the hardware capability. The description should correspond more closely
> to its change log:
> 
> 451d15a1731c ("dt-binding: usb: add usb-role-switch property")
> 
>> however in this configuration:
>>
>> &usb {
>> 	dr_mode = "host";
>> 	usb-role-switch;
>> };
>>
>> the role switch device is never registered on devices with a DWC3
>> controller, since that's handled in dwc3_drd_init(), which is only called
>> if dr_mode = "otg" (or absent since otg is the default).
>>
>>
>> This notably causes:
>>
>> ucsi_init()
>>  -> ucsi_register_port()
>>     -> fwnode_usb_role_switch_get()
>>
>> to loop in -EPROBE_DEFER, since the 'usb-role-switch' property is present
>> on the connected DWC3 core, but the rolesw device is never registered.
>>
>> Now, it seems like different drivers do this differently, e.g. DWC2 seems
>> to always register a rolesw.
>>
>>
>> How should we tackle this?
>>
>> FWIW I'd prefer (for maintainability reasons) to not have to set/remove
>> 'usb-role-switch' separately for each board, depending on whether whatever is
>> at the other end of the USB cables is rolesw-capable (since again, the controller
> 
> We shouldn't do that. The usb-role-switch cannot just be inferred from
> the dr_mode. The use of the usb role-switch framework needs to be
> specified by the user. For example, for this particular scenario you
> mentioned, the UCSI expects the role-switch handle. The dwc3 driver
> wouldn't know that without the usb-role-switch property. Not every drd
> platform uses the usb role-switch framework for role switching.
> 
>> itself is), but if we go that route, I'd request that we explicitly forbid the
>> combination of usb-role-switch && dr_mode=host/peripheral in bindings, so that
>> the computer yells at me if I overlook that
>>
> 
> The dwc3 driver can be updated to register the role-switch device if the
> usb-role-switch property is set. Additionally, the role-switching
> condition would need to be revised to ensure it is constrained by the
> dr_mode.
> 
> It's a bit odd to be in host-only mode but also needs to use the
> role-switch framework. I don't think the UCSI even uses role-switch
> get_role? In anycase, the change shouldn't be an issue.

Rethinking it again, we only register UCSI if there's a provider (in
our case pmic-glink with UCSI_GLINK as one of its aux devices), and such
a provider normally comes with a connector definition, which is logically
always a Type-C one (the 'C' in 'UCSI'), so it (very likely) has some
form of 'data-role' property (and if it doesn't, we don't enter the
problematic paths?).

That property may be further restricted to something else than 'dual',
but the controller will (to my understanding) still get a role_sw
notification (Type-C class .dr_set() normally ends up calling that one
way or another)

So, zooming out, the problem here simply seems to be that there is no
reason at all to limit dr_mode if UCSI is at play..

If it isn't, something may still call role_switch_get() and fall into
the same defer loop, but again it seems unlikely that it would be a
valid configuration (I can only think of dr_mode used as a workaround
for DR-capable HW that can't detect the desired role properly, paired
with an overzealous driver that really wants a role_sw somehow consuming
a reference to that controller)

Hence, I think the way forward is just to stop setting dr_mode where
it doesn't make logical sense and revisit if this turns out to be an
issue in a "real" scenario

Konrad

