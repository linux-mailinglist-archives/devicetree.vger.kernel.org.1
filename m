Return-Path: <devicetree+bounces-272197-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDoxFgrsqmlxYwEAu9opvQ
	(envelope-from <devicetree+bounces-272197-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:00:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCEE223425
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:00:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B296930584EF
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119113ACF09;
	Fri,  6 Mar 2026 14:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WcPb6H30";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I86UXxza"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75E43ACA6B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809121; cv=none; b=b0q0Et1DPFk8chPL+SXZRdjTiMEhYetnOOY9Ro2ip2F3w7XLapkMfSTTeV8bmD4RyOJawHF8sh5P+iBoJw8kYa7SRgEOqr27TcdZiw4yGtB+etKCQ8tQ7GOU4L2j7OiwTvW2nO12/bnBthUM6RFsRp9MITG5lqdpoSnWV0eF6NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809121; c=relaxed/simple;
	bh=bwjilBTEBISnA9MRCHz5a28UWCOJqJK3s4JWR2vnaPI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a94yAG3ZxMhhYsNKhWWh6y9vkeCq70ELvkpCh5amXWJxOp8cXz+5d7+1JziK0+gb9r3sJTFNSvZLxctaAWx0BT6aSV0IKKQ/RX2HMi08k/UT1WqnVtXLkzZ2/oCdoDuSSVL4XB9/M1R/pZQc4e/SBBZ2nloxgRcom8zN3gzkne0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WcPb6H30; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I86UXxza; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbGdc4150971
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 14:58:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DYWfBwn/reMz1eYK1IJk/FvySNHJ0NTJNTSO0VoHBCU=; b=WcPb6H30LOfVn6ON
	Zf6nnTrGLLSCIlO++fX+mMuWz3mWIwDc0FS5LiA6+Zlxh2jaDlFcmGDe3DfbxAlN
	WExNMrNPGnGeuNBsjh0qjb4apv6mG1gMLFhf6g85IJaW3KTeKCA890At3g0WadIY
	8hEsv0zDLkIEzSqv3aIDzzcEWxHR7+D3QDdAg9OHl71gDo6R0YcBUcR7Gy7XoAPw
	UF3L+lpk/epH2Y9R4l4uAN4rZaR8aqVUncmd5XR5yX0kqLNefrHkqlbKTzyxOkr0
	Wwj5EfiBD6ZRW+Zs0LkNvKz1J+tmaNgUb+v1bQIzWW8g476fP78C/p0XD3X2S/TN
	qTeFQw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25ujbt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 14:58:40 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae66ee7354so35781885ad.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772809119; x=1773413919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DYWfBwn/reMz1eYK1IJk/FvySNHJ0NTJNTSO0VoHBCU=;
        b=I86UXxza0xH+zdbudVD/sKBP/HRoFlzr7D6YrwEKPkPXVH+0Io4EGCg44MU9R6jlbD
         ywuR3EF3dkvDGTQHQdliybilIv/mz2usCrmDyB26q93HhP3Lb1fa+4jsVdOOyxiee84Y
         HBdMiSwKtYR6PvpaQn2XQk3L9U3mhevqbx0bp6j52c4TOJKYiQ23NGMt3O0ErAKtjCCh
         B1FMkWby/855NgGewlC3NdIHGwDrN3Dgb0dBi5cv/SrwG1LlTJiiAlz4Hb6tdst4H7DH
         OgXL2wtY4U01rnpGy12N+yTRvT+fDRRPyIhCsdB8oFICxg+NFo8UF0KSM1a8cngMXRTG
         uZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809119; x=1773413919;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DYWfBwn/reMz1eYK1IJk/FvySNHJ0NTJNTSO0VoHBCU=;
        b=sfKqfOwwgpa+3Du4zuPM6YKAQrn+Ac/cFwpQX6hQeWFI4LFS4w4EEbiwMkXnm20lq8
         /NpBYyNixeVAu4SmJXesOsiS8Jg2uZvHwIhYmaCg94KY1dgJRtAYWB8pdJOTG4ZXmYll
         8/hSq+SFnXpsIvXGAJzHRfOjID19u+apNJoNdsWhSwNLx3g2sFqcJG1E1x0eqCpBAQk9
         yFL4KSOtGLn8Aa2TegOB7y+1uNbLQ7lMU/3BoSkwJTpfWL4V7MaS3JM7pzhGD4u97dDG
         JeaLL0m96u+LMYaxu5AR2jFqvJa0Y/GS4GcI2dYBjl+NiugyVnCorR/259br9T9zTopg
         hf6g==
X-Forwarded-Encrypted: i=1; AJvYcCUQx/KhHL2VG6nnrSn/EYBOwHbfd0HUpA+bT+d7y2Cs3O06VPKpn42wn6Zxn3vFGpPGoV7Hm6Y8qiwq@vger.kernel.org
X-Gm-Message-State: AOJu0YyjliheTS3QtoMKylsbsa2IGJMEM+BzGUFGmZ5pip4xIouFM+ym
	hh0M0/9AfRxnwbJ8AtfNJErhXfql1+i9AM2iw2DuOjVfFZ9itxUuLYacGH8Hu2TLjH63YaNAVuZ
	80ffZMOgx5e+arVyXx7Yb95ej/rp6mWONKBoimYp6IexUbeXQl+BzQG132qNkWLlU
X-Gm-Gg: ATEYQzzdOOcIbeVmigozJlFZ7TAkQslLmulisn4F8fj4kL6uWmkTFNBcAzOKDVLhXoY
	VRFJ8lnmJjBy2WPknq86lZANFOIow3IPbGcqCwyYgRrQ0FUVkATKrtxv226e/Yqm2rKRsbRTYHF
	bwolhhjB1DFwVN/QM5hM6uTvoF0LwgggMI/EDGrzDM6FYf9BcDGyybnEAyxXPgaXLLczh4ia8WM
	FgZ5tGtQYxFG/9U011sEE0Jm9gFVEpm3O5gnowB/w8C5+ydtwdcD0qVb6uvpYWed5aHl+uk2qYu
	kZunIn0EuqqvYiYd8XPmd8F+/SBS8rdXazSE94kMdZfLT6u4BstfNHAb5EAp8EpMf3DfsYMkOQa
	K15lkgk5yWA/X3k3Ai3pOFDQDJZvVLDMuYzkRgUKZ11M1WdSgglxfryOn0SIFGvNpR8/vYHERRw
	ETJ7CU8jH51v8=
X-Received: by 2002:a17:902:d48b:b0:2ae:3d7d:d903 with SMTP id d9443c01a7336-2ae824465e5mr26588835ad.18.1772809118984;
        Fri, 06 Mar 2026 06:58:38 -0800 (PST)
X-Received: by 2002:a17:902:d48b:b0:2ae:3d7d:d903 with SMTP id d9443c01a7336-2ae824465e5mr26588485ad.18.1772809118457;
        Fri, 06 Mar 2026 06:58:38 -0800 (PST)
Received: from ?IPV6:2401:4900:88f5:81:e13b:ce78:7823:d9c3? ([2401:4900:88f5:81:e13b:ce78:7823:d9c3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e575f3sm31997295ad.8.2026.03.06.06.58.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 06:58:38 -0800 (PST)
Message-ID: <d9d8f959-9386-4460-a63c-200fa3853f48@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 20:28:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-6-dbbd2d258bd6@oss.qualcomm.com>
 <3f69539c-7383-4321-8cc6-1f5a8cc23822@kernel.org>
 <dd256b85-b88f-4163-a1e0-52c976089eae@kernel.org>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <dd256b85-b88f-4163-a1e0-52c976089eae@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: y4K9TJ5AhBVvs-gidcv2bUdBWlNVp549
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aaeba0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=x1fEtfQZAWo4FmDVKCEA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0MyBTYWx0ZWRfX9uzPnyvFglZ1
 3xOuqHGFobF7z5GVHGAH7b6GxkwU+vL3+IRH75OQ42gTHjOeArO4B4wN5rHal+OlAD32G2EXpgm
 o6JNMXYuPHFIVdaz9KdAZdc/+BmAOoJ1O2R55+MCC5KrIX7LXu8zQoB0INrxFVsZmBk56RiCYTQ
 yQ0GXwVr+L6QThwHwRXDi1QHbosds9ZuJAOkSbUmi55sPXXQT8JshLWEhJZWm//q+jfjD17dlJz
 eUPDCaQ7znAJEbF9njPs2beIv+6OG/B+jYTGOOSGrIMRaB0lAA+JbVY7ht4ml26HXn+voUm+LJZ
 g0Vs9SGO/kf2wVx6HERrLy1OgiifN5D75aePGsYIhSIvbT1EaWgoyiwh/gRLoQJ/cgNdbvPnjqa
 8wMJLgUPlW1QNVEU+Q8dxNuUnJzjpOozAuSGwJtB/6++Nu/UUmx6t416Ht9xVDwx7tWFKegmdpn
 /yHJPNuD1OoBLdviPUQ==
X-Proofpoint-GUID: y4K9TJ5AhBVvs-gidcv2bUdBWlNVp549
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060143
X-Rspamd-Queue-Id: DBCEE223425
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-272197-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/5/2026 5:30 PM, Krzysztof Kozlowski wrote:
> On 05/03/2026 12:58, Krzysztof Kozlowski wrote:
>> On 04/03/2026 18:40, Jagadeesh Kona wrote:
>>> From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>
>>> Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
>>> of previous CAMCC blocks with the exception of having two required
>>> power-domains not just one. And update the compatible for camcc and
>>> videocc nodes on Purwa to match with their respective Purwa (X1P42100)
>>> specific drivers.
>>>
>>> Fixes: a8a5ea012471 ("arm64: dts: qcom: x1e80100: Add videocc")
>>
>> How is this a fix? Describe the user-observable bug in such case.
>>
>>> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>
>> Three people reviewed this...
>>
> 
> Actually I checked now - all the people reviewed commit without fixes
> tag and you just added.
> 
> OK, this starts looking bad because it is more of such patterns from
> Qualcomm these two weeks.
> 
> Stop funneling features into LTS kernels.
> 
> NAK
> 

There was a comment in previous series to add fixes tag for Purwa DT
change that updates the compatible for videocc & camcc nodes since Purwa
was using incorrect drivers currently, and squash that patch into this
change. 

Since I squashed that other patch into this change, I added fixes tag to
this change, I will drop fixes tag in the next series.

Thanks,
Jagadeesh 





