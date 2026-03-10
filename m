Return-Path: <devicetree+bounces-273559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHavINgpsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:25:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E71251E2F
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9C3D33DC863
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAD738F939;
	Tue, 10 Mar 2026 13:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jxaJvtlS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fE+vB1NU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012D038D6B8
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149540; cv=none; b=CEyrZ6KR2N5GKYsMzsP3B5GUHdZOyEGzqkG/66OXeqEBrKrYSZfcu6FvBBE2e9MV6PKHQtGakTBZkz+Vg9UOQT89nTiAU55LnlN43l4qkGjmjC038kh2yeLdThYLeN7142sSoIaEqkzzG30Jf8GqihjXEgEn1m9opkmna9cshxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149540; c=relaxed/simple;
	bh=y09ja/AsRoZju+Ks6o6jz6PynHLhaXdqYBnQb29LTGU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PKM4xLWt4tZbNiyUZRSbqxQiWwQgSmwvt9RrKXHRfL0KfWxfK9ZwFOM/p923HMkpKwHNABAgoeNYTUe3MrHvH724pM//fZUCDWqKIwCSA6QbQUI7K20hsG3qTGPpyOUU+Pnb2QcYyybHfDDBtc/WllSlCIuvN5MP1bZHkeMVtAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jxaJvtlS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fE+vB1NU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaTwL3417107
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:32:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hTHBGwandiuyyY7wOt4R1PkYKvTARIsGpSYpehy0tKk=; b=jxaJvtlSN9jgBvZk
	DAXLPHWrk1lWTqXBz8+0LM+XwxDiznoRQI2Ha+NGL0RAzEx7wThUHEGAIUxIg42H
	di70wFicoIkW5VOYn/vgPvpRPaUbd+MerTdZyvhkpu3jsw0B9N6X3r8buJB3ytNJ
	MliVKCP01er+toUcZhL5GgELO9Be0TPY7tdv+mQFz2FpA4CbJ3Y/QtDkZ/mV/aeL
	gJ/s1S5MRV7Ca1WMGNCyt02AU6ve7e6LXX9GPFxIAa5uFPSrhm1VNjFhVuFkrMTP
	2avmFEmpLkjlr+O+BhdySvnDRc5mYiM0b0M4QB6gqjkwlDrJH8U4Uak72dnQiovu
	UQtHsw==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctja28f8f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:32:16 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4173f1d8c87so2646275fac.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773149536; x=1773754336; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hTHBGwandiuyyY7wOt4R1PkYKvTARIsGpSYpehy0tKk=;
        b=fE+vB1NUlDP0wN3y+tkTGNgTc3HIUnZGotTAplxFdmxqSms0NcqvmR3l9dXpcY0FMC
         K8tAvZAj7o3Vv7vYex/AUx+IMrMkKMJ2EKzb+5HvlpGmgFt7DYDT7AFqxIfF/XD2ba5N
         hy/u2dshVF13gGolhid5KNfXz2Q3uP2v3ivLnOUaUTje3U2v2djTwHmP2NENEE8QCQHs
         PPXas8COMpT+w4HFnN0KTXsLua5/fB4mYzJhm7ROwQd/QyfjP+11xkprNFCi7E+fWiUJ
         pEFQH1D53qBNlqm7HyhkSDKaCmLf6UUVbpUnZwi2DLeNQnV1nvuDLa/UicXjjxU53XFN
         PQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149536; x=1773754336;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTHBGwandiuyyY7wOt4R1PkYKvTARIsGpSYpehy0tKk=;
        b=oZ+ZEqNPjaQ5P6VaGBf8D6XEIrukSEleYakXWBDVl8/KijvIP1M3pG8fLNXtP1/SQO
         vWX8/qRFMC4FpqjxuTRTbyNwKxa/NMQquHtEpBdWYNjZT02JMYxQEPQE44hO8gwd6Qbp
         C/ga6tJQoVYNCdTjbn3G9G3ME/HLKTbo/vdMgehO2VZtpbd8Zm9CIbg5Ifrb0nVhqrXy
         yeB1VvLzKJ+pB+erEYwDqXzSXXBYEaXq0npOGHkOob8hy/OyX8+RKbkzKT1YOOUdNWW6
         a0I6Qq2LdNUDTmSe440TQbUTaI2f9Siqhb/BbhEkz2iYBr4hJbXLh/z3sdUZfmmtDuCL
         oxjA==
X-Forwarded-Encrypted: i=1; AJvYcCVRZX6k2R5zFJoWDQhgf1hCTY55vsJ4akbapogDRciw41Q9+SB+/7STiNWzbytFBbTI4ZJ2nhf4A/xI@vger.kernel.org
X-Gm-Message-State: AOJu0YxrWQ5uVI1ec2m+SQgT7NUe+25hSxO0LbrF6qkiEkkR9epFBgPD
	5hpWBFi+jdCkpO/hmSUhW58xsYukPqZcTmwTFOTHeITTVI5LGCj/E4Uwbrwrhm6PbJuFZYwkgfq
	zXokSKQ46pjKJKnVlVsZFlo0KKSFDAsTZBve3MsxFjk2EXlIyBhYZ1fI/mufV9GjI
X-Gm-Gg: ATEYQzzxQT+A99O2w55Lxa6S7FXt790ExTO29CJXrMlHOHDQZbNwoBEugUxIWDkji5w
	ebTse4UwNTxVDRu9LC9RYjibHJBAcXBs/SaLDAiBS7TJpjdEQUpIoo086cJqEuRwKsE0vVy0VxW
	VYwLBEGSuQlqtg9b29KG+pFxe4bqgG82z0yIWiFnlN3XUKOWCwEn8dNH8S+Wd0O9qIij0mfHTT8
	LPE7ZBmD5U1NbXsffouGDdWvztjWTFVVPIxMxIAi44Fuklj7X4xP6IIftL2rBpkX6qf4adVxMit
	HQQyCH2A+op9mmDAqCFMUYeVnawxgW41tzfKBxcmTTZsLw6H++zKkTRaYbKFLVq1/eu3qjbzsR5
	w8v/sy2oQf3D7X/tq5IRSI1nmJpqPJ5Y+3IbtonX0a+OrQ45QGmJAMtQuTpgGc4U+Xp4ethJ2hi
	C+Q8w=
X-Received: by 2002:a05:6871:2e94:b0:417:3414:3ce6 with SMTP id 586e51a60fabf-41734143f54mr3317738fac.0.1773149536152;
        Tue, 10 Mar 2026 06:32:16 -0700 (PDT)
X-Received: by 2002:a05:6871:2e94:b0:417:3414:3ce6 with SMTP id 586e51a60fabf-41734143f54mr3317726fac.0.1773149535720;
        Tue, 10 Mar 2026 06:32:15 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b96e07dc7aesm354874866b.35.2026.03.10.06.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:32:14 -0700 (PDT)
Message-ID: <af606d6c-3ce3-4342-bd5c-ce3ea28c6923@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:32:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
To: Pengyu Luo <mitltlatltl@gmail.com>, taniya.das@oss.qualcomm.com
Cc: abel.vesa@oss.qualcomm.com, ajit.pandey@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        imran.shaik@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>
References: <CAH2e8h4R-nF+eV+OnkSySKSY5_H-V8Ndyfhac3=VNQ-bMaBeFg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAH2e8h4R-nF+eV+OnkSySKSY5_H-V8Ndyfhac3=VNQ-bMaBeFg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=c9WmgB9l c=1 sm=1 tr=0 ts=69b01d60 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=wQPFRYplTptn7ZEjZC4A:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-ORIG-GUID: GYCf9o78-bjQkJ58UMyvzI4GraI__cvE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNyBTYWx0ZWRfX9JQAoIS/ojKL
 a0xE7Lfy5LaaQjHrsyIJnvvvM65SK5zohvrk1iRQXRfpNJynt1cxKSqtZB4Id9TbslkMSynsdPV
 Isx7jpKHGTFcVqlFKkmF7b0uVxdRKAM++O1guzSl6vVgOuM0EtGAP3Jp9kNkJOihu+rQqxJtX5H
 Zv5d0llYXdt+T8SJeTsc1YEejrVGWRo95m/yvqi4lwGutEjOJbTZNdM8UlnxNlR6wU6i29DqWzh
 5hWclQE0p+Iq3prLiDCyD502FWPYk/gyjgUY2qOEvpPpn5ZTUHaQxWLYGOJlJ8Jzf/hwE38MxvX
 uIJ1MyfUynGeXe7ZDfeFf/Xi2lGME8bFlAMx7UXbs6+L9ordziz9vLes6TH/j3b13/fnmW4yz2O
 d9hY9xSqPYN+egXIz9pq/Dd3tHZjV7AS3cctTRdj0Yn5EBNTCQYviSPZKFCnv1QiI+vEYNxDeR9
 fC7V7tCIWD2ak5a/nhA==
X-Proofpoint-GUID: GYCf9o78-bjQkJ58UMyvzI4GraI__cvE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100117
X-Rspamd-Queue-Id: E6E71251E2F
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
	TAGGED_FROM(0.00)[bounces-273559-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com,oss.qualcomm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 11:27 AM, Pengyu Luo wrote:
> On Thu, Mar 5, 2026 6:40 PM Taniya Das <taniya.das@oss.qualcomm.com> wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
>> is simply a separate block housing the GX GDSC) nodes, required to
>> power up the graphics-related hardware.
>>
>> Make use of it by enabling the associated IOMMU as well. The GPU itself
>> needs some more work and will be enabled later.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>
> 
> Hi Taniya and Konrad, GX GDSC stuck at 'on' on my device
> the raw register values are
> 
> 0x3d68024: 0x00000000
> 0x3d68028: 0x00000000

These likely indicate that some clock or voltage rail is not accessible
at the very moment you're reading them back

GPU support for 8750 is not yet upstream (and A830 is somewhat different
vs the supported A840) - there may be something wrong in that sequence.

I heard it's in the works though, so you may be better off waiting a bit.

Konrad

