Return-Path: <devicetree+bounces-268348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNPFOf3rnmk/XwQAu9opvQ
	(envelope-from <devicetree+bounces-268348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:33:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6720F197669
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F082C3020FCB
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 370313AE71C;
	Wed, 25 Feb 2026 12:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tj37xlL/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cPXtrQAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF9433A9CE
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772022458; cv=none; b=oHsx4RtYqdfuAvGP5Y2LWa2wqsnyUGon+aPJCCCSt1souowYDTigAWbgENW5PUEgYHfinHPHKq3rtdy1ZfapP8aDw60mWTV52nTOYR2U5AuieWdsiWj5zAK1XfhkrIPrOdz1on1QkZlZTdpk+rZCYfGfRPmyeWb+xvXQx4XkLwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772022458; c=relaxed/simple;
	bh=PXLTDh+maqgCBxe/dNvorJbLsAGIBi8CvjJVHMhJXjw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jVo+IZQ/JWLa9U3zQ8xrks1lVfw41YO4jbNbq6Enf0SViuztbefftloD6KS/e/9x9m1H7uWsIVMYP5M1giDuChLcSgCViWh8J9WIyYIsL3yTDmyCnXg8yl4614lMy7DN/SmWHZfdvYG/Ue6f2p6YxxKjJAEWt80AEpbpu6JXbwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tj37xlL/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cPXtrQAq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9SddS1087963
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:27:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fBLN8mfloDkKNrXMS2fMdIdaf1c76aXQMPp70m4A16Y=; b=Tj37xlL/UTpuNxcr
	w1ZY3sKTGg5YQTzzjxEgagk+mlA4cJoyDJ2mlIfKaI7aXkqa8NgHyiT6m5UDysbj
	fjK7oF35VVxoD6NawThAOZQFiVjLEZbe22gbn+op0fQiKfM3gLyqVEJdI2KfVj53
	wI8RyK5QZTDeTadbdHAPwOs7ykleDyaaTj0d4PyQWl3gA8U3tNZUG0QAPLcGwsHO
	42J5VZ8gnpkmYOlqztX82pThOEWtVVHvOnHGSnP96dVAM7gGAbkadI+hv6x8sld/
	Eral/OxTTG3uwh4UaQG0O3W2jjhjagNCSgN7UhUBfhZMAYlFHIG3drXU+qoVXT6k
	a/tD+g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chh472wr9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:27:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb5a76f13eso413638585a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772022454; x=1772627254; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fBLN8mfloDkKNrXMS2fMdIdaf1c76aXQMPp70m4A16Y=;
        b=cPXtrQAqdEQJJ9AUSqDucOg91QH3l5fhjVqJnD2tk76C81UwMJW4muTW2EMDJrRiDF
         taSmYxOoXn96n4XiR5YjOvjrGHYlX5fLgLDLHmLHqpIkh5aRz4z+vmW++zBawgnmnI79
         3CW9okREci3aKJzEYeVtOibldRbFhdQJLM4oUVd3bQD5M0XxcLKnJt2t7+0fwMz+Mk0R
         ifj+i/pDtk7njeLg5zMiSCvxVOY7m6h+JF1JKzn6M9IkhcH1Ezj0XeUyiVEThlJSwWp7
         aEkPyeH36AN+HTbZn1TqQApWregcegQ0ezvdkZSXoFo3TRXMu+67BcQtmD0ciAE35p0x
         kxSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772022454; x=1772627254;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fBLN8mfloDkKNrXMS2fMdIdaf1c76aXQMPp70m4A16Y=;
        b=KPjObJSN6q+8iPVt+ngh6UWxRMZBo0uN+1YFYNvv3inpI/kvx9SgmKe37NoYQgFuzf
         s1QpBIZ1bhQ/gvA6onzgj4jgIcb75i255vyrFQGb8grZmhxVvQ/5FGuHbiIPcidjqZCx
         uecyoGsv9Fu1SyI08KHP3Ft5uO5d0rWpILFFladiaigmrr3kKpJ0DgOu5oy/ZowRhEr/
         bSKNCplpXImCPAU4W0FQux+QofRPR8j16eyUwbULkqSfpot9ROLri5OIRGEO9/hER2O5
         I+9j56/ZIlpWPC0fzK5riT5n1F9cuVT0lxKdD+XGBRQQWFUi0qTEK8n2mql8PIFHJciJ
         jsyg==
X-Forwarded-Encrypted: i=1; AJvYcCWZqYbKFVgDp/9yTzTnmOIYV8aCZHPayJ98zz7D29hJT+c3RWtwgvcKhasT+sx/sQNqd88nDM60JrW1@vger.kernel.org
X-Gm-Message-State: AOJu0Yyer9/OfZO5fH0Z38oP1RoNto9cd7mQoaHkxzHkla/iMnpykZQp
	ngfiFywIoyadd9TRaW2BOR/86263jRmyNmQNbyeNPss+kkncBV1DKsZpYRxIkXWgo7edW+tsiAe
	BgmbbcapOlAkPPEjRGVXzPEN+XctkoZY/76XYsFrmKThbS9hGPI+6/tTb7oNgqUXf
X-Gm-Gg: ATEYQzxw4KHG4QHtzNx074DsojWqkIOhdGaAHUSEEQiTJOerDGF/XZxgm4G61RmMv89
	7XdT97cNqkZipvy3h7vbxGTH6Oq6Vz8kPpBZ6AlhuBsSzGnbkh8FieJm0FG5eovxSJOXnJGl3s4
	RsRhsgb3FxaAsNkXEyNubsBOQq2tIbuy8UFiZouDmR+y/Fn+gxteVfem7mivrsG9hyTXto/rXCn
	UwU8ULLRoGR2Ev3ei89WzKZn6pSy0fg+LvyLZTFYECzTKLT4r/UkkL/d9j9yFYMi2u3YKDAMPXC
	9dZb27tnUF4xR6CfMi1ZkemRPelBDmlmB6WuwsKqA5sGVirYXwYe+ONCa1tz0XJGxY9Bv5IgHmg
	uYx5ikPUNIbpMGxH0GUt/156bOEqq7fGoIXnrqpaWnJr8xABTZi/O1SRTLNFnixU1pMv2I1f4dB
	1lMt4=
X-Received: by 2002:a05:620a:4628:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8cb8ca640e5mr1609795685a.6.1772022454003;
        Wed, 25 Feb 2026 04:27:34 -0800 (PST)
X-Received: by 2002:a05:620a:4628:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8cb8ca640e5mr1609791885a.6.1772022453456;
        Wed, 25 Feb 2026 04:27:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b934c9a645csm15099666b.34.2026.02.25.04.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 04:27:32 -0800 (PST)
Message-ID: <71addd51-78bd-4e1e-9881-76f0ace0a23c@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 13:27:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
To: Wei Zhang <wei.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260225071459.1600394-1-wei.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225071459.1600394-1-wei.zhang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 79XwWnK22KdVkWxFcq-ITPM8rJr8g8uy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEyMSBTYWx0ZWRfX0zHZWAZUAE3A
 jLFwdDlgo35eA6ldWXvdIM6cvzZZ3ka8/2Z2xGvQqjES8NlV96feb+mNWPIygiPc5d8X9wIwUVE
 CD1MJ/gCcdTjL2nfS/Fu3RiZy3n0uV6RgFeY6/VUf3YPcQDo/CIeT2NF+VcKetbqsmn6tkFvG4C
 cZrAzaDUOhqhaLzMbRQFdDn9522Kk25ZsV2D9+pwisaoLpu+5ugwK0HUIi8ICNQGLnKl44tsvVP
 HMr5WLSwRMS9B8kZ6Q1WpWBo63UBzG5dK7+tY3zfW7/BWo2OsQAI0hlmY7Tw8L4XkINLI2Gq7Nq
 Po+hUxTf/PoDNZ1+BQLDhyIld2j5+Wo2PNu2eTSJObDSggsQmnIw4MUhgOM4bF0Wn0KRK51bti0
 Za/iyLpaevzs83FFYuairF4DeY2cG4fymi/fh93SL57PYuLzGrkT/EXQmjDsiKvUBQoeW2rjedX
 O5k1df8q/V2csrSQRJw==
X-Authority-Analysis: v=2.4 cv=fvDRpV4f c=1 sm=1 tr=0 ts=699eeab7 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=DgEYNLXXC2yaUqHi_YcA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 79XwWnK22KdVkWxFcq-ITPM8rJr8g8uy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268348-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6720F197669
X-Rspamd-Action: no action

On 2/25/26 8:14 AM, Wei Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> On the qcs8300-ride platform, the corresponding firmware and BDF
> are QCA6698AQ instead of WCN6855, which have been added in the
> 20250211 release.
> 
> Signed-off-by: Wei Zhang <wei.zhang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

