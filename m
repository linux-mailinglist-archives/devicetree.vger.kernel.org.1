Return-Path: <devicetree+bounces-266604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPWRJ/PVlmmVowIAu9opvQ
	(envelope-from <devicetree+bounces-266604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263015D4F9
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD816301FA5A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF26533A9E0;
	Thu, 19 Feb 2026 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z+YeuFv5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gcuHbkQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7183E145FE0
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771492804; cv=none; b=mLykcDWid0TPlnN9ms4wVUnxObt+uK8liZF/O95s/cgiqx73gUe5D/Jyr8GigCddAcJajuZ12Hl4slNhTu7pRSrG5wjIiNPMhyCXNhGeYdwWtm98IrIoknh/fJ88iTWbAdHO7ck9EMgjz5kzrlwBkK0ayXgf+WgUEsMuWUtOU+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771492804; c=relaxed/simple;
	bh=kisVfgvpDR5taz707UhZIUsAYFSg3p8Ww2QDn94jDMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lsh2pgHJ/Xr/Eq9KYDy57aF4sgE4BpDSCO5cktpDKbLrJHCo4o7T+RhS+D9IVlelsG3/pIV9rSyqMIFXi17HGx/v7tJeDc0l8gVIJaFcUDN+dtQVSYsnkzbNvjt97STs/vekW5FPRXO124J6GOV5TIEjKrOjo7OI59WtgRxwTsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z+YeuFv5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gcuHbkQF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61J4HYhc4025110
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:20:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=; b=Z+YeuFv550VWb/jG
	XcxhMlkDybmHfcO11v6yPd2ruS6jpI7dQqcLZc7W2XpDMpgqKUZPhVnBVA1Z74v/
	CB1zs51vO1Y8e01Pzpld0PzMrHvCwRX7LTzloAi74z36nLEdT8p2Z/bfUtSm2cG5
	GXz6E5ecH6LHSdT6X6cjZTMeLTATaXLs2a7Yf+HkTmZSsJZWSgzgMVj1NARmZs23
	+p5fwFsV3S04J3+JjjDiRr3hCoVT9K6tTfaKO1wMaa3ErzdeO+Pd3Zs9TXAn+Mgq
	vyUlxvy0Aftc0Tn9ioEgj6XloFUr5QycjCcrYYre/aGTIbRshOEorDDuI+aNEFcw
	G3R14Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd78c3vxq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 09:20:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb38a5dc3cso66906985a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 01:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771492801; x=1772097601; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=gcuHbkQFndN9CRmIqO4p+5Aq+pTXiHXKBF0Ub1N7upjdLkEIMK7cghbuLgjEF2tw1M
         7kPK9clT2cG9aiCWxr82z4irWyehwpK3TpvV4uq/j8Bk+wH97LkI49bNe+Qf+31S0Mnt
         AdLiJA7WvTmgStLEfHRXnX6sW/NmS53dLqBbPUmuGxwqpEjBdotIww9VgfIFEhQbOzUQ
         UUenbi2nellzArFUE7PsPL6OZYeW+zvZshqzcHzrV3f6ya7UCqfmie8YYoqBErC5Y3tQ
         Bck/Ef77oyjT050cKWrX9qOm9etFzF2gASAQUQBvOQmIxyPt/f6899IOc1igYGxDmUWz
         0Vbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771492801; x=1772097601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HUa3BE0u4BFm+LYlkvToA5YziCF+XeAij7ya4biirpo=;
        b=of7phX8ANzHnJk4+aZCvXNnYkQOsN3J2o+V88Ol/Kol0DDyqQHEpNA0y++7oSXTq1k
         XI9U+4djD29cjSJHvEOoUJ5YQwXbddrW0FjzSHrHJG5QaesJotlsmg2GxhaBVr19myYg
         oxZ1kyewy5ercxt3Nl898IN/TipVdueAz5UhYNku7KU/U5yczZHqXrvqa2h+rBWVgz0L
         F3uOeF2Ak/vWupOnQO+9YEBwlf8FyOyER/7Z9ON1J0R79y8f8vCOIFlFb4v3Pn1/Pb6z
         +fLzzfUmGMI1VTr7oPK8BMYi+kC3omYcWpioEPettawpzxkpQmh+ErlAxoWpP7Jyhi14
         QM1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJg5rdwGXpAe7yfDunk9nxqkY69QXK7gjKH4cwsH45AewFQD4gOQ9DMJXy5pOuPJKgyRJ9mBTIuZ3A@vger.kernel.org
X-Gm-Message-State: AOJu0YzwL0rpJLQb6xQRuNCxj84Rbemw+pdhECpZ1hZqyRpEDLHaqs7a
	J8tv8D5O6FVjwN4QTeh9+hY/6vNbP+GEDsr5ADI59p75iYutppm9OffYvBZ4YmT5j8euNfPpsnu
	Ft1Qcom9wjMiKEJKX/18CbK6RgJjp8P82nIt6LnIPRARny+4AL2oU6kOljLccet60
X-Gm-Gg: AZuq6aKV4WxxDB+/HKJudDPSrXD9PShthEu2cp8TsyQ9k1P9N2P5kjXgZHVgytA5IBg
	v3+71YdJt0ZerFT0yGAaSCiEHIGzvhUOfnP+HQhT8B3Wm1FkzMcuEPDIGit+RAKqRJYVGmq+rEh
	JVQW1EVatcJkoGeLDiheU1KFJpXZ2Qu70wOk6tnGOylPQgN1mGldSKRbNS06DHPQzx7a7Xp5Y6g
	mRM9R5EJniv9eWtPX2AFlSes36txXW2RWviwwVKOesBw3b+B6kwtDU2qteSQK65FYIR7ySXR7rT
	3WZF/5/l5SxyKH9gOQ8bz7ukTENQbp5DSHPak1yGJHmrWMiFxw43OPwzEGYM8FGDTmpixlI3G+u
	p8P3t0+XuExWU3C+e9lZm3N7EQt8uDm4F8qJ+iSAEc4BNtS6kQjvSYLl/7SCUTPhy9W1gIq6cd2
	I6wa4=
X-Received: by 2002:a05:620a:4441:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cb4084bbe4mr1975688085a.4.1771492800852;
        Thu, 19 Feb 2026 01:20:00 -0800 (PST)
X-Received: by 2002:a05:620a:4441:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cb4084bbe4mr1975685985a.4.1771492800345;
        Thu, 19 Feb 2026 01:20:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc73f102dsm537077466b.26.2026.02.19.01.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 01:19:59 -0800 (PST)
Message-ID: <c50de0e8-282e-4e1d-a8de-10dd047b9c30@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 10:19:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8550: Drop redundant VSYNC pin
 state
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
 <20260218-qcom-dts-redundant-pins-v1-4-2799b8a4184e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-4-2799b8a4184e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 044SMOo7n4cMXuWrv_dPiQ_Ko7y9UUWB
X-Proofpoint-ORIG-GUID: 044SMOo7n4cMXuWrv_dPiQ_Ko7y9UUWB
X-Authority-Analysis: v=2.4 cv=P5k3RyAu c=1 sm=1 tr=0 ts=6996d5c1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=NMe5sQuIffPLTvoV0ecA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDA4NCBTYWx0ZWRfX+e+BHZHempfM
 bAaMhhHG2fQGOjYLm8W8VGCTVqRf4Z8ccjV3x/SXpjEXE/e0q9YNbyr/OvGrgKDPwfDcjyngyaf
 HMtefugwL1LLTN8sZpiUwjqONcHiDtJhGPEfbxaYWuw0m7oLITa83JH/EcsFOS/hHdWhid35eVN
 dxC+FT92qJ2dCk0zeMeRwjqD+5tQBijNF5gPIGtB7hpUkzt8tdvVbRhSCv2XWKesdK7ep8c3IRs
 EP+bUY4GVxjlabMS0dsnohZORgo5B0FaGHcyMVGf22c0O98qR8D2Zg0FlcrhgOz2x6LXIh7ZYdt
 oEvYchbi8HgACAAkVW/ZNQgYc/8F3A8JR37X0jcku+xwmihQnwlKVtyiG5cHRhKOzC9pVN+p1rY
 kvOokKP2jvqiaLKoxxoJnTS29fvr/yotUQ3n2qOGjASiPBnB1EP2kOUGWCUkxCzXhzRSzWPyxmR
 94+J4gKHAUuDSmQ6dug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_02,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266604-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4263015D4F9
X-Rspamd-Action: no action

On 2/18/26 6:24 PM, Krzysztof Kozlowski wrote:
> The active and suspend pin state of VSYNC is exactly the same, so just
> use one node for both states.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

