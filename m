Return-Path: <devicetree+bounces-271415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFq1Kbk+qWnK3QAAu9opvQ
	(envelope-from <devicetree+bounces-271415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:28:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 079CE20D709
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:28:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3CAC3011841
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:28:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 251D8372EE5;
	Thu,  5 Mar 2026 08:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A/KxXZzj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bzvEU6tz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91B730C35C
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772699319; cv=none; b=kf2s624g0+U5fwtkjHVJRt7zGjUaiGDFQfuhLtzuCdvOaKHa0Mi6mm8UFMMg8H4ZsdxPf8l+r8WwQ0JS7ujq9MihI5J5EXrI2XViAAIJpBXw9HesnCd146wOxfakXXaFHX4T/miNRn3z2xG71HRRwYaRDUgwCW9Jzzz4LW3SMfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772699319; c=relaxed/simple;
	bh=JwApMPYiG4fd/ILnv58A9G+Wcb/3tF+XZk+KEDsh1gc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dwj3ZW4GrOZBA4QO+k3buouyObWYjihv/Ucs9/rWZ6kpV2iEUrvDJGMJqt+Nb34wTKfcY2QC0h39mkJsWcAwpx44zts5KFmP4wqmYceek+We4w5auZYD/a3IGUiBnJt3OO1e2nVGnABBz/1LJ8EdfRo9/kVRO4B92OogRA8v7hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A/KxXZzj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bzvEU6tz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251BfvX020980
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 08:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mgrx79lfGEzLBlX9QN3Dz4SsddgdoZaYB0lKI1UCPb0=; b=A/KxXZzjrwhBKTtf
	xknJShvWkVYN1otjYIetX2XvjAB+2HazIWy7LzL0fkNAJgsobAmu6skfI3H5JtX1
	+NvTZqRh5TxSPdfxUHu81FaVsTnIlzGMUVREfOeVkPP1XJMadYcVaK7QCf6gxsis
	vf7+hUYHDfLRdqZR/auibSPTPP1f8pObKDQzyd2zFU5BivWxvCtnJBp20MrE0GUV
	deI3ujDw1LMsoxUwzskONrbHOG9EaFoxunskpNDUExTsuntSX6WsjW7YniNCIsjc
	nP76ksbQI1z1+4ZkhNmTDEWeAKaAQU/CRap9SHAgxbVxCSdfFZa6YMyY92XR7Qvs
	lPfEhA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpupthw4r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 08:28:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb38a5dc3cso577621885a.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772699316; x=1773304116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mgrx79lfGEzLBlX9QN3Dz4SsddgdoZaYB0lKI1UCPb0=;
        b=bzvEU6tzu8LQIx5J+I3mBt6x13UsytFwFvx+HWXyuqDzwx3SxW+LQ+PTJ+s1byTM5E
         2kVow+5GeH1/vOmU2a4yguM4L2RnQMyjOovfjrFJJWizRt9Nzm/R9dnZ/0N2feGWkvT5
         qGerlCSXLp9Ssk/fDcATPiUu4RRBGdSJU7ufxEX3rpaUxCu6e4oGE3qIThqV5Kwc8P26
         CfP4Q/XTGH4oeDDNhIsbL7Kqc3It8DylT72EH+xxOiTl5fBDnC40xwLPwTeGIGm/62qf
         zrsdmlpihCSowoMO8op0s1x9U5NWiirQ78t9cezKvj4nRaHGLX6HtBBtjgRG/pmfasFY
         ylhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699316; x=1773304116;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mgrx79lfGEzLBlX9QN3Dz4SsddgdoZaYB0lKI1UCPb0=;
        b=JXUYdU0oSPNFFvO1lcuqiFPpjACWL/5uU2/phVm9p1lS1KVF39wa2nKXEAnw3hdhv/
         nWtoF557dl0hdWDtvfHYn1l+6w2eorfUrvbS0wn14hawRiwmvkQJw1HRfWbdIOYbCT4/
         1u2DV/ndGOWeBFLJjGawJ4jeqb641QUwosAeZ8eIS75pomasDortrVN7XhYkwjkxTbOb
         sXHqUY0w7p54hFvT2oUID6nMjvJ08h2wUnrepnvYUzCLFRbTJ8C6GFfEHsbbBgZS0Fir
         6dBFRNlR1oCXHhfxOPQy0HiX9z1JLOei55eu748nnn8iuH8GyFG5CJM+6b3J8iG5wcDC
         YQuA==
X-Forwarded-Encrypted: i=1; AJvYcCX9J6KOGPA5+7GTuMli9U7kC0O2PQVBk+9TshAUJRMuMywx7jJJiadZz5LgZ8KXR+jrSOMrsHKxd4di@vger.kernel.org
X-Gm-Message-State: AOJu0YyH9SCtNEed2AVlBrsh57A2cv5vzHdouYgl7GQNTS7thcvASIz3
	n/d9sFi7mMfhkUludkqdmgBEwGDlg/7xCfpvZh+QZaMSI2D/k7TTGROVTdcTa+ILwKx8jhzfHUe
	vGZ0Pj/FqdyEltUfalD9OkEZepT2g8E8d4dJPDKk/q2fe9bblQ7/hyWEvwGWbBd6t
X-Gm-Gg: ATEYQzzOpaCMKcK7Q0ZoaJJU1NGn534aaYJlnLK56BTZZsNHDOewsA3ZKIM3HBSBzr7
	sSBvqJ3qrYuTm9nvdtpVj4hfq6ndeBtdXJ9NFkS2tWL5uG/bNbktw+8f6KXGP8iOVabRMZuYKE1
	RCp92sio0Bh2jn867d6N9KmrJNGuxuq4DoNW6hromSv5K1pwImTkDwskjVLgz7+r+F2uPmUuVAc
	o8tHCNKX2+f0YGObpiHX+E4OyTf6ybyFMEdADwJtPNtl6pUw1Uuo5iMB7/odMBNUu/MMfQCsDiU
	qwoErrsS4PD0C25PiZdq/6bm35ebmdUZM4cje7RaeF908Tpd7O3skXK/KmPg/ptn+BYQp0Xn/AI
	W8M6OSurhVwbjE6pYzvhINvGi6FfZ+DIboxmL8VD59cq5YskzIz9AKDUEPy3nvAc9wdsxug0nV8
	KW7L8=
X-Received: by 2002:a05:620a:4409:b0:8cb:52c2:6f19 with SMTP id af79cd13be357-8cd5afa7b9cmr428636785a.7.1772699316233;
        Thu, 05 Mar 2026 00:28:36 -0800 (PST)
X-Received: by 2002:a05:620a:4409:b0:8cb:52c2:6f19 with SMTP id af79cd13be357-8cd5afa7b9cmr428635385a.7.1772699315811;
        Thu, 05 Mar 2026 00:28:35 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac84357sm868737766b.30.2026.03.05.00.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:28:34 -0800 (PST)
Message-ID: <a3668aed-0763-4bfd-a24b-f95977d2167c@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 09:28:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add
 initial devicetree
To: Paul Adam <adamp@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260301-wiko-chuppito-v3-0-9b36a2a7aed5@posteo.de>
 <20260301-wiko-chuppito-v3-3-9b36a2a7aed5@posteo.de>
 <9ffc0460-e394-4f18-aed2-ad8a0b3d1b8f@oss.qualcomm.com>
 <aaiuzCWHegpJMCVj@MyryksLaptop>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aaiuzCWHegpJMCVj@MyryksLaptop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA2NiBTYWx0ZWRfX/ajMPVGlV60I
 CrdznJBOvyaGXZw2N5VY2AckUAz7Fl7VniqjigSxjC181PLTp3QPJSpZx24OVzsiBEzcSWVrH+T
 bdDGOPmCBES/8n/i6vCLeYguCBx2FjscXZfX+ZyUrgarK1FSQ0IXeOIawrOsaSuiShxyfqyjD90
 X1O6oPxIlUPSuvOXu/TdMp005iEF9Pe5BdiO4LrqT97ZeTMVzdhNLwV9z9PSaw1S7UjkYTWK8/6
 vUajJ7tfXqsStC5iaTbSBqT+gKyQwGtJW7sSWCLztGs8Qn6RibhT2q1cXQtGDyyMDmAsIe/QgsI
 es2DDc39xM8DGtuYjtnfQCxC9oEq4ZaRdeysANOCtDKs3CYdxWDq0UWcaOVG68tPDzlrlAk1nwj
 n9GTqZSX9h4tI4pEclg7x2iixCFlVu0cd6/TUqPIcj2jo9CEbAgtLpebUNMLvkV8Yh9jC3TLnYt
 /n0ZX7yKEfxgmuUgQSQ==
X-Proofpoint-ORIG-GUID: rkkPnjrfd1dA0VROnHXBGPjmnybcL5yg
X-Authority-Analysis: v=2.4 cv=Ddsaa/tW c=1 sm=1 tr=0 ts=69a93eb5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=boWcjoDG4uMwkFA1WOEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: rkkPnjrfd1dA0VROnHXBGPjmnybcL5yg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050066
X-Rspamd-Queue-Id: 079CE20D709
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,posteo.de:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271415-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/4/26 11:14 PM, Paul Adam wrote:
> On 26/03/02 12:08, Konrad Dybcio wrote:
>> On 3/1/26 11:29 PM, Paul Adam via B4 Relay wrote:
>>> From: Paul Adam <adamp@posteo.de>
>>>
>>> Add an initial device tree for Wiko PULP 4G.
>>> Includes support for:
>>> - UART
>>> - USB (no OTG)
>>> - Internal storage
>>> - MicroSD
>>> - Volume keys + Power button
>>> - Touchscreen
>>> - Backlight
>>> - Accelerometer: Invensense MPU6880
>>> - Magnetometer: Asahi Kasei AK09911
>>> - Hall sensor: Rohm BU52021HFV
>>> - Proximity sensor
>>> - Vibrator
>>> - Earpiece
>>> - Microphone 1
>>> - Headphones
>>> - Wifi
>>> - Bluetooth
>>> - GPU
>>>
>>> Signed-off-by: Paul Adam <adamp@posteo.de>
>>> ---
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Konrad
> 
> Thanks for reviewing!
> 
> I assume I resend this once more with your tag added?

No need, the maintainer tooling (b4) grabs tags whilst applying

> Also is there anything else I need to do, if I don't receive further
> suggestions?

Nope, just wait!

Konrad

