Return-Path: <devicetree+bounces-273510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGJ1HCohsGmCgAIAu9opvQ
	(envelope-from <devicetree+bounces-273510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:48:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 926A6250D08
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A48CB31ADF8E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0105F3AD506;
	Tue, 10 Mar 2026 12:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LZMHgcQs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JseJ6QNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8877E3AC0E3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773145661; cv=none; b=ampZlhV7g3jQyLiKOxMsto6KdmQF4lEeplK3mBCTw6VxzUf4S/9NAJwnsfcNg8EuwadPS0tJBlGY8WP7W+ymAxzsWkiQZlTqPhsonTp4Gmt2OdxilfCiBFtDAygU0kARkZvJ9yH9/98lKETukmlLEof6QBTbM+8cXu+wFoQqZMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773145661; c=relaxed/simple;
	bh=8Upy1cHORXDNFQ63wTwBurOgO3zyTLSCnEIJO3Ampf4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fNYawXy01IEkXI2o/zx5wErIxoVOnlRrNExJnBF256GphobRG8SvbSbUhHsfq6XlaDp9s8xzK3UudLvDDHGmchyApeGw3PBCd42sEVJYA/zYyYToq2bX8Me56eU+VoZPRXPw+WIudZ6FF6gGqj9OwrVt5RcwlTntw3cmYHRfn8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LZMHgcQs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JseJ6QNU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A98jMP3754559
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:27:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r/UGlNQn23sYU5tLZJ79XsnEcLyxrZm0JZwaMD0J1PA=; b=LZMHgcQsjuODNi6T
	tua1ZEJtrvSzgj1XR6TUb24ExqCyLLdZQtiBSKWVLiIDXw8U6AHk0eOc0o3tz+Vp
	+7m+NlHnludGjjNOOWR6+gylCYc9LfRsXGoKcuVinaHYgAwZ+d9zVlTbVB6ibcTR
	HuJgGxwT1w8BlbjORaUe2bV0r2evfQn+fxOXuYXdXiGyKEXT/l8YkL/cqe87Wmi6
	KCWKfAiMUtyS3T661X+5ylPCy3Wp4n/X0byIX9aav3svy9mNBuznItQSM435hmiG
	b+ONH2pz9B6ZZEl1yicNcVvEbkHeGO0tnssUw0AB5P6a2n7S6W5KM5fhe/YGqln8
	UhUeKg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct477k5ad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 12:27:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd93c91075so64055585a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 05:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773145659; x=1773750459; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r/UGlNQn23sYU5tLZJ79XsnEcLyxrZm0JZwaMD0J1PA=;
        b=JseJ6QNUBD5flhODwgRFgaDxyAJQeKjAll5Ctf2l03oN/T3XjWNov2x5Rko/ma6lB5
         R5jbxQJ9SqnjJWXztfH+8jHSq98EbjRAWMjr/Uv36yEpIaX7a5KygfJDOhQdwti9I/pB
         L2ZOofMrpVFK0TKe889uPQydnzaFBUnk1GdiH+TBCLhHSZR7Yt90z58710zefdBOsXMD
         JKU07IY+Myjo5vii0R8LSM/lPDWe8qc2K7PorLKscEqFt9qjOZ5NhEUxdSSPz9/JeBka
         CN+JS5NFJN1HRZA1SYIlKJX7N4z3m6pz5hdy7M0TboN9VrjRzBgT3Lv0yu5FRQdBsnwE
         w6gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773145659; x=1773750459;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r/UGlNQn23sYU5tLZJ79XsnEcLyxrZm0JZwaMD0J1PA=;
        b=aV7DaQ9sl1jy2tbaUKU41NvJ2bi1ruUefKD0EhuqrKyPZWPKcS5y0YSZ2ZeojU7ex1
         aVX4Ntg+MkB05TuUhTS08QvoCICnKWYQBSciL1TrteqwdmmI0hbl/hVSdZo0d0+T2UnE
         9ZEVwR7X5qhHggqa1qTURodeAb+lw50bTtKMQ+Jy6/FJbSAkxLI5pIfUG2xBOIPlEK8V
         mr0xybq9Ar1Yy+q7gQqskkEoMA8Nx37HIgXnuZGP1lBlCr03256VEg8LA6KGmpBMB10H
         Oqk6NcyXeIni6ZgnLt1oEp1DU1MH0DCj6ROnlZZsIdk73rHph6VA+/H/xh0f7OK++58J
         9wCw==
X-Forwarded-Encrypted: i=1; AJvYcCU/3J/q73gbvJpT0uyV64TC7BAa5Iu5B0a8w57SIKKYv3AILT3L+bz0j4BSl/cIdc6ul8KQg7iB62Ol@vger.kernel.org
X-Gm-Message-State: AOJu0YxV0y0oTQku4tpnlGDmToQDV7ltaAtqUTveUjwIKr8tKmyCq2tb
	qBzuFixLnDYMKK+k5PfLL6euJklPFHL322+IuyT2mCuc711HUALBsG5kg7ZoGDFXwui3oHIkdUv
	+L6SMbQjAgPagYClxwO9n3WZMMyGGYc/FTVAmXCRJFZZP3kdve3+KOlUuius64EXB
X-Gm-Gg: ATEYQzw8KvJk4DtuT6Ir83zTjSYb9kgahpcPNNKLvzc4tU9iwuvBttA6FhbOhOK9uXL
	dkfV+3rh1AOK9qBLR6t+sj1E5d+ggEIiL5zdPFu2csrb/XAXbCTPPy+rt5oaPZucmWBtLluG5vl
	mtdoLd4/caZ/nPle9IKNiAGJ7HI0kJy4CzrsjjlCIRgRRphIXdj/TbH7eU74rEwgl9e8jeiWKc0
	yFDh0fD29fmzC72KzehsA28aev0ji1rAOwb9sH9EYnnY+zRdf0sbSfXqjGpiKUK2mZ1I3hhgAwX
	jMVsvCp9OL3EwQyE0531RFMfYfxPCEsK09NqLdXjemtfGAaiYZt/OD88KuxpYHi4PS5//2aT/Ba
	pAhUTqm5E//GQeEaye2jrUBWEby8nYx697UXO+JrrT+IpKzB7xO6L6DenscccRVlgEx/wr0yCFH
	+2K/4=
X-Received: by 2002:a05:620a:1914:b0:8cd:8751:2b19 with SMTP id af79cd13be357-8cd87512f16mr725001485a.7.1773145658831;
        Tue, 10 Mar 2026 05:27:38 -0700 (PDT)
X-Received: by 2002:a05:620a:1914:b0:8cd:8751:2b19 with SMTP id af79cd13be357-8cd87512f16mr724999385a.7.1773145658398;
        Tue, 10 Mar 2026 05:27:38 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f15c23fsm482138966b.49.2026.03.10.05.27.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 05:27:37 -0700 (PDT)
Message-ID: <257549d4-b582-4b40-86aa-62a2ab68037e@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 13:27:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] pinctrl: qcom: Add Milos LPASS LPI TLMM
To: Linus Walleij <linusw@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260306-milos-pinctrl-lpi-v1-0-086946dbb855@fairphone.com>
 <20260306-milos-pinctrl-lpi-v1-2-086946dbb855@fairphone.com>
 <CAD++jL=6Ns=OUfE4YAuNzbvYxd4fc5BqiWjWWFCs2OaALdBnfg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAD++jL=6Ns=OUfE4YAuNzbvYxd4fc5BqiWjWWFCs2OaALdBnfg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEwOCBTYWx0ZWRfXwNooqqcfmSmM
 UI+dd02uMpO+0ZM6b0Zm6nysgSzuB/oEJ0uc8zKatm2ytY+gg5yZpn4d+/9Q8vzILm7wkg9pCO0
 MbjXKlawhhxlIkbW5Hvg2MLH1DgugYMH+XD5eCi3WWsPZNhZobxZh10NROa1yttRiAMHSwhYdhM
 LKRwdmWFIwLtgCDzaLpK9goMID3EtSBL8KL7Ryhde3PqM49Lx7r4SYAivrTe4IfetzxSxdLM3UE
 HuA/WI3YkTHaYfqNE//vqtLr0CBdpZvBTNh9qKTJGcHFc1Br0rfrWb6encMKPs5ZswC/je90pd7
 FNlx4Y6hra5zWVB1qvBQv8CkyIyICJp3aLK6aDoe3/4LyuL0PQjpXaLnxtcSk8BWrMrIzOT5kAU
 Y0HGdRzDrXZ9ujkE6VNPE9yCJiK0kqVIXu6cu9BzpOv5AgTI/vO215eULSvHxT7ZUfZolRvK7dk
 yCrwwVwDN/D0/p2e39Q==
X-Proofpoint-GUID: gN25xDZYWP73RGm_oQZ7FrirejCheN0P
X-Authority-Analysis: v=2.4 cv=KLxXzVFo c=1 sm=1 tr=0 ts=69b00e3b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=yMsay90vpbKVJel7XqsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: gN25xDZYWP73RGm_oQZ7FrirejCheN0P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100108
X-Rspamd-Queue-Id: 926A6250D08
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273510-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,fairphone.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 12:28 PM, Linus Walleij wrote:
> On Fri, Mar 6, 2026 at 3:22 PM Luca Weiss <luca.weiss@fairphone.com> wrote:
> 
>> Add a driver for the pin controller in the Low Power Audio SubSystem
>> (LPASS) on the Milos SoC.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> 
> Patch applied to the pinctrl tree.

fwiw:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


