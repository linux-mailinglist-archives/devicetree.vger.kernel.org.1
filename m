Return-Path: <devicetree+bounces-273546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOi5NS4lsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:05:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 78756251508
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:05:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B45C33245783
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C07FE373BE7;
	Tue, 10 Mar 2026 13:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NZsN9zYB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hXoXl8cA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857302D0292
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149188; cv=none; b=rydmaEBCRsniCaHeDh14NYcqrL3q1ISROvt2a8fSQOSA0EKZmkLyeywUqZx85rN+v1R5MQp1AIlEr/rNStjPnJWUD0MqZMAStcTyi7D0QnuMuaWrH2NQEXBE0OSkGqe4NQsMbg+4IgoOT8aF1b+3tC0xWunkV/9V/jy9FIKZ1Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149188; c=relaxed/simple;
	bh=U+HgIi4bJzREOY5i1XwMWYogQDNt8n9oOlbmK5Ejb+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I96169BnVe0eO5Ek/4GQ6fyTkevA1ZXE9x74x7kTsqTHb+xOqdZqP5Uy6Jy8zJSvxexZ38bwSbWZSF8I+KLdcahDqqyWK9zx+XLRR3iELD3r06kvO4yTzT9p2fEZmlXk7pqVUMLW9IZgKf3f6WLWNDQVDV5n0sthOaf4g7smj2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NZsN9zYB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hXoXl8cA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACbBE13773193
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:26:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fOq2Sthvh4Jkm+waeh6Yl1P98rOJ8ij0I8Bo+iSm8iM=; b=NZsN9zYBKfmBq6k0
	3e4yIzAYCoQJK9NRoN4/f6hpQVMIOyW9zUsz1bxf9r1hhghdEIU9Cbeyseo6RVx9
	U1Z7KpiOtZKg8px/sDrqkbBTrCmDxaaqNoUlD6ZVw7bG1yXx9QwXbN9Ra7PF4KGg
	mzxc3O6+6sND8uCtubLmoHgNtXlxlx2yajoYa70yFXhGgyMi5XNqcWn6iKFVtcMW
	p4oTG/QoXlrAplSXlfy2hGi2ekcjz85UTIrx4b0UJV6Z4qwFGO0O/7fA22hAxwsp
	6PdKXQUvL6u84lrl3G3ULp7uW9srLfHQgSWM77atv1mMlqQhD6ZEyEruyaV+i8kQ
	EhymXg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctfcj18av-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:26:26 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a01982dc5so62870496d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773149186; x=1773753986; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fOq2Sthvh4Jkm+waeh6Yl1P98rOJ8ij0I8Bo+iSm8iM=;
        b=hXoXl8cA1uNx3ank/bG2jzzRRl1nZa3fPtJwMGtDIvsOXg2vUMtMCgEwQ00HKuYd2Q
         VU1OCKG0nEv8w+1nd2kIYbaDvhiL0WQmO4rQSNovAKUSNjDSv8Ec4lEQmwSzRPVyw7ik
         i16OFDLQh4VKJFiU3llk4dM0ZZI5lTPVOJeNwklBlgunIHk1M48+zkxyajSVVjtLRLly
         HKpUN2y9pGc7h2sTStWIICllK582MhM4Xr/HzD8XV4bnTnQRsH7pLRNTHJuA3XKiVC6E
         d3PUjzBDgQorRwgu3vfBNq16Ahnox3ek9msO9BNix7/mw4OmeW+DsKf9aOzRB4wR4Rx4
         ZYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149186; x=1773753986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fOq2Sthvh4Jkm+waeh6Yl1P98rOJ8ij0I8Bo+iSm8iM=;
        b=YnKlFdPqN/fF+NkuSbhHJbjJoVcISzQt23dr+mnneaZNIM0z6mdlOPzLd9uzrdXu4y
         gJdGfWf9xlxH2KuLAzpipK9nPMMQrqqjYrKF2sXT983/s4bdzV1HvtZjQ5qHK52ksnTo
         ezkgo6G9S4c30fCHzSYUT8VFalYGKLcH/ZYvqu+F5TZUXN5mDL7Ty+hFheiTuP9BZxf3
         +MMl7JwlT7u2uzLDpKWqFwHhde8o23Xc6DM9d5ognQVQrlfpWSPmw3yEkRiKr+zCMdjv
         DN8t1xlhkHGDsOJSbVemHybShhjkoBk1BRhsSkvTQPYLjchLjRXgnhSqWmvjdgeOFUAD
         21Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUkPtaaBsjj809IFVrqxhQ60XVyC2YurGx9G82jvF5eFVoXdTigzMZUMn5C/M9jIyF/EprMKIhJ+cdI@vger.kernel.org
X-Gm-Message-State: AOJu0YyozxHoFPbeAbPmbilVoHhV7VKM7QhrM6PR5ukuVAnjMIqD9WLO
	zCsiUn3CxbZH+DS44SyF/MwTTSBBBsTsTI5RwQIuKoUfUU9WpVnAppirvVvAugHwWMsZmgqRcmB
	nM99K3X0Et9QOdbN2DOCXVMnTcjQ9SM81HFkFiseQFpBSmhblybzhCQP3KOKbfLDZ
X-Gm-Gg: ATEYQzw4Wj5kf9KQ0ePolg1PnpJ7foAb0ta9Y/K0KWUTfLfo10zfW7HJdeAqKRpXRb/
	3Aj1o6PAdE+PRblB0vlEMQBjz6567xrKIJHaTaScJcQcvuUAMszOIyZ4yCuw6VN97/JSrh4qYQP
	NQ5PYgz067TUMzu6VAA6sMPC7BiLv4JguJi7ZFYwwlWRPbNrmXYHWzSGlp7mCMdlRpwiTknehFa
	SJahyfaWUJBmGy+MaE7H2V5LMaAHcEVPz2lejYmVN0psQrvOxf18ffXRPvnpeFWrjSckoIr6/d7
	gtInBogMzACE/Xwfr8ou+pccTw6+OoPsnDKiBPPsKz+1wMEp9YVsuxPZw0EfefcLXlk7awJwaIh
	fwlyPFFkon4oQGK4+LcHER8B9oji64a03Up7PkNtloMyFsbY26H7Xe5jCwpWA4v9k7IIkAX1LDg
	Y04vE=
X-Received: by 2002:a05:620a:2955:b0:8cd:8411:a5cb with SMTP id af79cd13be357-8cd8411a9c3mr799715085a.3.1773149185715;
        Tue, 10 Mar 2026 06:26:25 -0700 (PDT)
X-Received: by 2002:a05:620a:2955:b0:8cd:8411:a5cb with SMTP id af79cd13be357-8cd8411a9c3mr799710685a.3.1773149185155;
        Tue, 10 Mar 2026 06:26:25 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3f5ed41sm4208787a12.14.2026.03.10.06.26.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:26:23 -0700 (PDT)
Message-ID: <d6609992-e319-4758-a24b-688259b473b4@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:26:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] clk: qcom: rpmh: Add support for Fillmore rpmh clocks
To: Aelin Reidel <aelin@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux@mainlining.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20260308-fillmore-clks-v1-0-976d9a6bebe7@mainlining.org>
 <20260308-fillmore-clks-v1-4-976d9a6bebe7@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260308-fillmore-clks-v1-4-976d9a6bebe7@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H7fWAuYi c=1 sm=1 tr=0 ts=69b01c02 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=PNJmjveSQSdRINGQNJ8A:9 a=QEXdDO2ut3YA:10
 a=KpimXkPlJ-4A:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: 0Kj3z6X6z-FhVmeYSSMwqMQy2eUCvc2E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNyBTYWx0ZWRfX+D6okeGmBhYj
 wp9BU0BUKzL1IDXYo/KWXcfMV2gz6ANLmEifL80vjLLpQSNRvc5PBUpep8W9Iwue7J2pI39z3b4
 qJtnCzAeKHamK4R7Z+KbUxGqOG55oC8C6p/u7RFnWKsD3u43V9DM7xIyjH0qPDortkOpb+as0Gf
 Ae+rLvETQ+z6viz/t+Lbu4sVWM4QbeEfw6osJbh6ZXk5vXKRzlW0Jo/tfqcqdIGjpESZvk4L7a4
 s4eUrDrQqfziPVjGnREEdULFkq8Ip+7brFmurBT0SgtTpuDecIwlqk9H+tFYp2KIuTQMfJKoA77
 1DdSNOUYU946ChJetq5l70UgVekvg/fl1xlpG65D7kIXIRoc/MvFDqCS79NLhIAV7wBcj+++l7e
 MxP7qwBZB+V3A0EosGOPmXll1JQoQI1QY2W6JskKMNDK5vayHxkkFD73U/TmN8uwfbCLtFJJ3VY
 EZWq39qqVVrFiUy76Dw==
X-Proofpoint-ORIG-GUID: 0Kj3z6X6z-FhVmeYSSMwqMQy2eUCvc2E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100117
X-Rspamd-Queue-Id: 78756251508
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273546-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mainlining.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/8/26 1:39 AM, Aelin Reidel wrote:
> Add RPMH clock support for the Fillmore SoC to allow enabling/disabling of
> clocks.
> 
> Signed-off-by: Aelin Reidel <aelin@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

