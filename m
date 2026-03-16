Return-Path: <devicetree+bounces-276150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KI2aFCD3t2nSXgEAu9opvQ
	(envelope-from <devicetree+bounces-276150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:27:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F131A2997AC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 13:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21631303011D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F039395279;
	Mon, 16 Mar 2026 12:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i8uOeQax";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PylL+186"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B442C3932FE
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773663906; cv=none; b=B0rrQgFu63IcZd0nePil/C69mFFlamTSSA1gnj0tUDoNI2z3cILpqdVAx9bJMg9HGXmcgLu2JggDL2DTvu/61JKYKvJ9DOlMh2WmJPMZ4zU7RcIW0/+b7p5DXaB9C8fHFm5BuCOqsAY2y6PU/rF1XJOGsefmM3U5VHSbvLQPJe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773663906; c=relaxed/simple;
	bh=lSpmCKs6zodXDxPnxmd3wmA75ZCOnRCx/fW5bn6fVoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ApSZjuRDnJSzj4Qo/QuI/vKuEnwQrPXz6RGcXwvbFFrQJ9eehpsVsAvUnKCE4z+Ml0DUAxQf1fuw3Ya62ZDw2SvboeZeIBRTzhn13AQnvZknMM4kEK1ai8qYWLx2p0Qdjbflqthpp314XuVCBM27PRo49mbIBLwgrvq+bhzQ1XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i8uOeQax; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PylL+186; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GBuuwJ2128576
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jBNTEclNCL5IXfgD0gIYhKI6BwkPYlaHIemf1BqvQFM=; b=i8uOeQax3pDrC929
	hH+M2GDUKV3PWUsI7ZhqS5SfPdX6ArQ3+yOJvtcftzCbUxFi/KCIvJYu8lK53MAL
	OOBiWbpXPnmBXmCvRu/KbKfgPM8yTth49ZPDaYKyaxw92kS4XUxXdemLhAF9LdXi
	UMw/AeygYpECPcj4T683oIGVaHQY1QD9m6gdra+e85H4cgrEX9KTJGBNwxultpSy
	/toE0dp8ewwmiMdGvL86kb5+G1bWMnynq03EEblbD+wB+3aQcX6r5MFDXcMK3uej
	bbxikGO4+vs5u95iEmiIT1vMijNKg1H7IMVPnTyqfS4qw8XgjJDeoxQw1ZtNSjc7
	pm8sGg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw00antwn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 12:25:03 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a5b38affdso33784376d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773663903; x=1774268703; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jBNTEclNCL5IXfgD0gIYhKI6BwkPYlaHIemf1BqvQFM=;
        b=PylL+186KCiO7JMPY83/EmJlF4qWDAFp/3/Q/avZc1zMPgy+lm3kV5g1sqgaBqMrqa
         EMQ19aPGO43PFgfLgVz7s4a5sHKoR3M7O0OTDnfKWUjfNUosgWzFHyOedbIiPl3fWSNq
         JUNrMCxnkseMM94cVyLMut3lfAC5lYNVdMHl/xkmUeat4CNftAyuKwfGVP1gFBhxKh3j
         PBSEi/bl7KPDGJPbYAXTNh6xcEiHy1bj7RsE4u0qGy79VyYEzpa6hbVlYE/mJHXZGodE
         cy7wbBYez7cM3gat4KlPgpgI/TvoWzcHeP0iwni/H3OqfRQf/pehtaUV/+qZetXMvGj3
         GGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773663903; x=1774268703;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jBNTEclNCL5IXfgD0gIYhKI6BwkPYlaHIemf1BqvQFM=;
        b=HW6nLsuGlq+bFeYPnjyjKZDR4Ulk/qyfkMBX1IkVEpOidhKSgJBmQqq8StTVIaHmSN
         YhY1PtjcMpDtw0OaF7L1CV4bDW0rzJokO6XpFSXttE2lWX/tXW/QP8X/s3y28R9sViAG
         Gq3VUGQsJGVSwYiw/DQk6KtRuGS/Zr7SAXjRooaLMJVblpI1lPel57UBgn3sgpjuASo2
         Ol6XTBTNqSxY9vpojvWWvzQj0yQjMfSBCoAk0TevYPLYNoZAAfLImxcmwpmHrnAAFevp
         hOZzCft1Ak8QTgDZJOq2yD36OcZeEhyjuYK8btyyK7nKpOn1aYJj8umKdIUAEfH7z7XP
         JfyA==
X-Forwarded-Encrypted: i=1; AJvYcCUVrbDBIqa7/HO5nPAft7ULb1loHeTCFz1Hn/C+0YgJwydjl2tASw9jPEMmns8cN5i/mA9lV6UsTGR4@vger.kernel.org
X-Gm-Message-State: AOJu0YzpjwcjaCzYT6gyakMS08ux2FY37b6DRwugpVwaWbunJptR0EZ+
	tEBiGNwzhkolFlkAiLlyxo70h8aIfW6J1jdaMigNRRjEAusqTbIiECt9VS9tsYjOz/EkXNxoJt8
	JwujKqIu3M2W2yRchihQ0ApmMYpIPLPuEQwAK6MKgRQ++J88CENyWdK/Pe6YuwgRb
X-Gm-Gg: ATEYQzy1X2XLEVoysRwWLSuafCK2TO+Noqf4PxlKxeksuQoENIskSBq1q3hAgR+ebRt
	3d6eE4P7azGZocmoMmfCSLzO+qkN/K20I//praduj8CoSLyMljUxkIDgh9S8ETmfKWHfddYISdC
	la7KKOd6iyn4Rm7jOSd8xMWp44fnw8326hoLf/6rvq85793fVGEWN+VZgcB6eCQ2arGfuoHpAS3
	kexflDIOJ0WKcOqyJV3iF8iwCp5qad3xLy8xl/n0aeF2EqMZhjyP1hc/bHlXsvPepxVjHChxVZs
	zmZLl8OSDVXHNJJyaThRR9kBxKs3DbPyGqzfvV1GpLxbTmcFbcq0WP0uZWIkeaPpKxZKtD1joh7
	MzrricW1oR1d7dkTl2eXKTl12BhjgFWS00LeQ9P2qzv5AZoOdp5+uZwTKsI+Gal9Bl3QnFiS4/r
	ZEOnI=
X-Received: by 2002:a05:6214:4784:b0:89a:4741:2147 with SMTP id 6a1803df08f44-89a820eb598mr121528306d6.8.1773663903050;
        Mon, 16 Mar 2026 05:25:03 -0700 (PDT)
X-Received: by 2002:a05:6214:4784:b0:89a:4741:2147 with SMTP id 6a1803df08f44-89a820eb598mr121528016d6.8.1773663902666;
        Mon, 16 Mar 2026 05:25:02 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97a63bcc74sm299802266b.15.2026.03.16.05.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 05:25:01 -0700 (PDT)
Message-ID: <46a7e40d-dc74-46b6-89bc-514b3a09f21b@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 13:24:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] interconnect: qcom: qcs615: enable QoS
 configuration
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20260311103548.1823044-1-odelu.kukatla@oss.qualcomm.com>
 <20260311103548.1823044-3-odelu.kukatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311103548.1823044-3-odelu.kukatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fHEMWJUL57jPS6shSxOfJ2iJgmF_84Qa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA5NCBTYWx0ZWRfX/0B8BCDFIwYM
 prEBDWGxxewBa8X9nkTCAFf/RpsVHrNuFTu5sdYXvHszrEU2xaF7nlFaw900Lp0vm7x9jKmm1O1
 y1a7MJ2rsj0VdE9BNUDIuOFhNZqXVmC6cBKknNuInNrM335O6snLCQ7y5SHsTb1Ae74ewT0e1j8
 g0xUKiWl5paTOm7C7We0dwb7urEnGEqRbavlbvhGUut1ZUHkIJ1NoOgW2vAkM8vYw9tgy/+XXGU
 V6JKeKvdtDCTF2AFUIItVVypSxe2R/GzXS5kTTsqCPHgfV0jt5C6qWcNo3CGTYgIICVF14RnXCY
 vjFNje97fji4H9fI66DMymQTXVp7z/ob1c+Ra6/sTY0iN6WJ8z+fFWewxpHMSj5NSZxNKcZ7tfS
 oE4HMROUvSC6jUxMbGgIv/+YtzuzD8VYNdGeULOPZQxI/OSWnFpg/C1gwk2j1qVSkRk3PSPSZqQ
 gQk8NxWCul9CeaCmFnA==
X-Proofpoint-ORIG-GUID: fHEMWJUL57jPS6shSxOfJ2iJgmF_84Qa
X-Authority-Analysis: v=2.4 cv=ebIwvrEH c=1 sm=1 tr=0 ts=69b7f69f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=EMGZ7LyCd8X73lh2icUA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160094
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276150-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F131A2997AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 11:35 AM, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

