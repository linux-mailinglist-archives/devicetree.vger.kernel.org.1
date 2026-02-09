Return-Path: <devicetree+bounces-263890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLleNFygiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:52:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD2B10D3A6
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:52:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B8A7530117B8
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C7632571D;
	Mon,  9 Feb 2026 08:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U7SxL83i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A7bk/fQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62413324B2C
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770627159; cv=none; b=Nmj0HR4HgGnSb/ca9cQuTOuTyh9LVG/NyIm/jkrBxIHq4EzZn45P6UjUHrQ2LkygMhLUOOrnAfLopRpkKR9diOEREvCdiJZuTa4DNXTjaukR0CXf/bvCdAs49y5vhCl6dsgNHX/CayLe1eLHvR+z62mUzwqmiabehAtDwC583+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770627159; c=relaxed/simple;
	bh=O2ERFXCOh8oVHp+vC0a0l6m03KY0EJUEhe9xhuR1YPE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a3iLI18EDb4pC7twkzUI6S1JV35nj/WO2VyLTZv5ISEta/6JE8fjU6WhrcqtSpNOpbR8Geb28COCl5XU6mQ56k36+IEPrfKDfDlQVRINLJnnhbHUDIxNW7jj2Oa2MnUlRpU/aIwTst121xd2wbJGIPkBENMG7yjKioEJLHkUF0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U7SxL83i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A7bk/fQf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6194THI92600297
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 08:52:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fSMEYw5lLx9/9xQjkmYc9ZWOXG+p05L2x94EzP+JM0Q=; b=U7SxL83iygvFKcuH
	t1KHgmTyfvCHps3kvxaWdyP0vAqpi78h1VNt2JvPXh5IrCtGyVfYoaIF8SvXig35
	oIAe+6XcwQUfxtQ/++O/e8lSIFaV7MYkfLgVY3Vs5qDa3qBOl8SJVj4mCmnwD9Af
	7Vi5Eq0IQbqhoF8lPFLyVGg2lKPp/+55VRogUH8v6VkD2hW2ymUVgvbcpn1un1Jp
	fMqLmyXg+Qpi2I9n7tHdFUqpoNn7MkhrRqmqE5yAJRue3lvPCHGfHd5zvAuAvPZM
	F7CuQQmF9WgXLa2hiKzk+PtoHe90OkZlB9aSLd659nem7WHLbtlEcvZQBdmmV6Mo
	Uqaa3Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c78kh0tps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:52:38 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c52de12a65so61906285a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770627158; x=1771231958; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fSMEYw5lLx9/9xQjkmYc9ZWOXG+p05L2x94EzP+JM0Q=;
        b=A7bk/fQfYMdoBEcA5P89PcC343zUgxxAK4z/koBAc3uCLddMUi4HD5Ovhd8xN2Rt3L
         dms1pRQFgt7CVM9EM4r4+78LbfyrjevgizJAe412gi8AyrDRdFPVbjsfEWQ3L66obBYI
         gLRh9pvmHp9aoPnvueMVlWMa1b0J1FG3BZZxDdpFqmpnZFbGhzK9sLYL9rcjBy8MUNnl
         w6OX0RdslY+K1GpeKs1SYAU//BT2hniOMO4aEa+6W5mLqC01B6MQpUJExYao+yOryqL7
         4DJVY1LYqyLiEGAAVwcHAVudgVmkdmYHwP8TD7GSvYAMmWTvDlA+g6b5AzW/1rreKWPo
         VzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770627158; x=1771231958;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fSMEYw5lLx9/9xQjkmYc9ZWOXG+p05L2x94EzP+JM0Q=;
        b=MUR7Cd8TXmkGTEADh1QPoANDEKsP+TRdHab2c0mbaYjFg6TBIYGnzpFBBiBeGBG+l4
         Z5cG2vEyezQrcEw+Td3vaRPDw+yGTQDiAWEWxKveHUiN7a7dhqqEJ1rGludsLmMuGvAG
         r+9nLOFmydFaBUGVFMvhcTi04lV2z5V9ZV0a/KmpHcN3+B2HDLaqll3HSKyWVxwsmNJv
         BC6Zmc5BIB6sJrrymDywYiI8yx+Pih210X/LcfKGAKcw+FKvNrpl7go0S9nn91JWRNKc
         1iGKmeJ9h7ljjr0B0iVG++Ny+sc/1JXMGCaRpHF+lbKJJ8MBd0lDhWP9Rp70bZglfBn0
         ey0g==
X-Forwarded-Encrypted: i=1; AJvYcCUkyjBANFLa3RmBYSI3j3kaaIgP+zcm35v2ebwCilBrrIP74CZsbi/GZxjHFnFZE1Grc7uISnifnS0I@vger.kernel.org
X-Gm-Message-State: AOJu0YwS/6LXBZ7gyuygY+rsQVGO6kvZi3fLlv4fw0Y16iEkEmGeLb1s
	KRjpKZdOxVTm9ctTlzPBa6CAU+4uTSKiSgU/7K1QmuzdAPf+9rSmGJVhxPAkuguY2ajTUtaUxZR
	rDM4LmAmJr5sztst4//tIYMP/Z6xwmwMeal6F48JAujZyOTEVb0Amf1WyofkwIDVp
X-Gm-Gg: AZuq6aKBy3FGicBSPAnoRkAe4xeMrVMpT083yysPIFrIQdmlAPo2vtEQEes6ZYedJ+E
	7lMwrkPjMoA8VEticrmEloJth45he7BbI8usB6Vf9GeDOn7SEVlSYVPVI5gCovINh9RYs616COV
	ud/nQrGfWSCUB285Jv0OLscVDydeKHhxEDBUF132cxXc0UKgdhGnH65NnPVyydI720NOJp/zyDq
	U8cnUdfoxy0e4BevOV86DwbBginfXLIwvk6gViUpGAB6DyLRy6+mOD9raPOfIliUUbLrK69QT1E
	5pqTf0d1L3TdXjXrSQ/CHilxGTWnfQ41/FKBSo0MjUlr51JVS7MZ0pfMgK/gVFunwUeIlkiBeRQ
	zY8YNkBnrwbEQTr9nRrlWcZzNLuFVl/XcaqYIxvyX3LW1FteYrqeIBl5ZdJTBhK0x3GQ=
X-Received: by 2002:a05:620a:4110:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8caf0d3d550mr1063131985a.8.1770627157788;
        Mon, 09 Feb 2026 00:52:37 -0800 (PST)
X-Received: by 2002:a05:620a:4110:b0:8c5:305e:ea16 with SMTP id af79cd13be357-8caf0d3d550mr1063130585a.8.1770627157357;
        Mon, 09 Feb 2026 00:52:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edacf0fb8sm362883966b.48.2026.02.09.00.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:52:36 -0800 (PST)
Message-ID: <3b80afc4-f823-4623-a3b6-3983da0bd0ea@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 09:52:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: purwa: Override Iris clocks and
 operating points
To: Wangao Wang <wangao.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260209-enable_iris_on_purwa-v1-0-537c410f604f@oss.qualcomm.com>
 <20260209-enable_iris_on_purwa-v1-2-537c410f604f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260209-enable_iris_on_purwa-v1-2-537c410f604f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Nt7cssdJ c=1 sm=1 tr=0 ts=6989a056 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=0sQX5ZoqpTKKceOkOh8A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3MyBTYWx0ZWRfX/NRjJPHD0eEV
 dl5ovLL4ybbQjfNdDhOWSuMKdabep51+yzuI4jX8VD+3Zg4emKrIWK2u9LQIO6IdmV32vJYWrbW
 NbfUM8l4d2CaBBsXzgJEAA7n49iB1EcnhaWaBuDVhdgfZDDq0eoDUDpSIYRNXM9rLw2lKe8HU0j
 WDVAKGRiLVPeYjtpZutwyNpiT5Z8TPrGvJ5bLSRVRFfflYx8ZhKEU23aEyt9AFC6wKRWCDO1TUg
 r6fmyjmbaXzSKhfKF5Z4ygD4f6AL0K6lRhWfrESXkBniVtE5Gk3XaqAZy/lfD3Tlu1y6kIa2qdM
 QNzY7BkcjcXYpRew9iyoLwH0FT2KlxXGtN4TxuGG+4zyXVo6pE9LPl66BPJr5Jx4CHxGF/OWJIU
 N3t0l9dN4pwr+284f2lS6ILEwLFR/lBUAy/J+HnraWfeL9SEyGFAV6U/rxug+8B1kt5GNVnVLwI
 4Ej48fC4PRgM3n00Rdg==
X-Proofpoint-GUID: argP1K9lw0hB1Y7o0RN-1O9paKARcY-d
X-Proofpoint-ORIG-GUID: argP1K9lw0hB1Y7o0RN-1O9paKARcY-d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263890-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1CD2B10D3A6
X-Rspamd-Action: no action

On 2/9/26 8:39 AM, Wangao Wang wrote:
> The Iris block on X1P differs from SM8550/X1E in its clock configuration
> and requires a dedicated OPP table. The node inherited from the X1E cannot
> be reused directly, and the fallback compatible "qcom,sm8550-iris" cannot
> be applied.
> 
> Override the inherited clocks, clock-names, and operating points, and
> replaces them with the X1P42100-specific definitions. A new OPP table
> is provided to support the correct performance levels on this platform.
> 
> Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

