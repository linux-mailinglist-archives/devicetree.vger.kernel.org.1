Return-Path: <devicetree+bounces-270447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NzNDI/JpmlNUAAAu9opvQ
	(envelope-from <devicetree+bounces-270447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 12:44:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A277E1EE57C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 12:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68E273002E1D
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 11:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9134142EEBB;
	Tue,  3 Mar 2026 11:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NB3qVClL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RzaBW0Tm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38B64301CC
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 11:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772537360; cv=none; b=iFzAwvVaqB+E+jVZMtpPTCLb+rjqXX0guxQ9f7f8koWBrWoXAeG8gW9pfWuyqS31yAPYb8/M2lXfN+UN+fV7p6BiIg3NG06M751z7zpbMKdZQ+hHQOvQ9EIMCdt7Lrb30KohO9G2IdIzFKezxskvPiW26ew5LuenGkXjJxtXnOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772537360; c=relaxed/simple;
	bh=G/3Z1K53rJdl/TCaHbhKbvp1KXy3z+FehumKhtCp4MM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LpaPOyCfAFJ9bKD6hQAXPknDKstaT53iltJQGoUio0KTgEqAEW8csAWuQybGyu2y91+BnERvxMSgOR3qsKFXGA02/pTv106pibDmWfB9gN4HRMYNrhv0gAVZOQxThKDC6Z4+I0r+ITjdKV2al5LxsrcxfFu1MFnf8aiBE3+SIGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NB3qVClL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RzaBW0Tm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239ms6R3099704
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 11:29:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7E528mXcuIMjIjKLIeGUqT6KwWcbjhsuWdJSyllS510=; b=NB3qVClLBh/5OQx/
	VhoKZkWFngmDF5QepvIF5oIP3YIhKK2x0e/+hF1lpZga9yWGZATzPEaGim+o4Viq
	3rKGDdVFR37QGrm7crCKdnA9DavoBWjibYRUfitsOdkQhJ1iAwyaQFOx8tfDPyR1
	3zlljsYt5VKz9WcAyXAWKlcG4GExKKBSUcu+6a522z4PVzO3z5u4uhHklgyIe+hZ
	633wdP86WSsz7LHUy/knHUQYZjUgeLY8ogI5wQN9UWCXz0JwYEonCriRtTe/LgiK
	fUU0N1A1yWICeBgUHDnnWBgqAMDV3awZyaaZBJ2dj4WaR4MT/4aDlpwH/5W7z45I
	HGXQow==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu0psc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:29:15 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899fcb63705so8550106d6.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 03:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772537355; x=1773142155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7E528mXcuIMjIjKLIeGUqT6KwWcbjhsuWdJSyllS510=;
        b=RzaBW0TmqRGVns1t1wMTxWVbafkVE8pFQT8mhCAAlU8/SjInVrpBblKGAFH2/mV4Qn
         t9/xPOQbqCrEJXkWSodUCpAfEqQRCsHVDiBDIHsy7/27tr88Ar73nh/od2s2fFREaXGu
         ++0pbke7mI4yyi0wd0dTIULsyQtwZdTLXszfKnxmrWS9T/p7MiI+G1+v6K6vE5smIMg8
         aRcW3ZWkm+Q94ARGEJY3tK20FmElY7djIKduOkGM19LBHhPtGbQ4N00eaQTtf0q5CRgE
         7Vr+r/HnTgSDbGjIdruAvtmv8Z/dJ9gGMPO4KEfCT+6d0wxAR181Neh93Sk/QY3S7+hk
         CYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772537355; x=1773142155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7E528mXcuIMjIjKLIeGUqT6KwWcbjhsuWdJSyllS510=;
        b=rDnXaEfsCJrEE5MSfDEkQioRMcmlxQoPOiyBlg3Sodkz2N69ojIpS6pvhwY+YjVeJi
         h7tq232qQBK8HaAWOVQ/eqFp2W1SdLNRVSj3cAsem9xWtdwYNxXYgUH/RmlHhMQhKlVT
         PAYByt2fnQAXkcIg63steox0XN1v0QkGNS/qo8EQwWYOUdyp9dcRoKJAAAf82J8g0RJK
         S64hRfIiJOTer9GYuqTgVQi16TZUkqlHsNRZyrLUpqKdwoUm/x/av2bXS/WngK5qGdIK
         Qt5pBXTig/snAsrxETPpyPEqI/GoSDTbdcC+YqmOu5MlrgYN4PI91zs7BN3T9F6MuGGj
         F/ZA==
X-Forwarded-Encrypted: i=1; AJvYcCV+I5WZM3BlGDSxvLZoiqIkLkAnGKAzlpDf2Zs3VcM28M2wbnVy1vStlUT2+JTmMDQ9yssheW4NSbFW@vger.kernel.org
X-Gm-Message-State: AOJu0YxAdCODDPwDBiKtEYMKvNFzc+nJbWZbUlfFERc/XJpGr8jDDli2
	Kw4NlhG1/j0U0bjs2FxxSpjlijkNNk7q+Oa4kouJ0ogjEy0ZgwQnzEW2gwRoNXPdpGNGtKbZeTx
	Dm5PiF+cvthhIA6CeMfN4koJKVB9roarfguEf+g8cQQXaz2hySiT3m6n5k+X4qUwk
X-Gm-Gg: ATEYQzxPVYn6Tz7V5DFLtA+miMvrZfHQPGLCxLxxhtC7FDVDhaO1/ssGYG2eZYPbCr/
	fpdnnQYG9Xe14M+vi6lNtMcVQiLy2vACfDdLbhinL50cCE0LHICN3cxNsMwzKWqjS6I03dONDzC
	LYXWShmHHccIkjz2oGPUWZcFW3ZLYSDOBKkOVLySj+Sz15AHfKSQX3qfDzIIRHMgqM2WivbAzBL
	D0/egceYn4v0sXxejVK+XXAvvpZ6L4OHZFazCxc2W1Ct3oP8BvKjRYScV1fGChxMjijAZfnnjhb
	83pCQhZc4StoKO/0QRb9MriF47jIZLJRXJRVFI0+zv9dJPrV2be0Jr2+SJ9ADq94ZF/klwep9Hs
	wixxFZ4JS3ioPGXiIhx2iztlKrtwHw0e6K4PnY6ThgnVjWrtvbOOsnnNnrc6ZV7PWGx6Uh9u1G3
	Yq7IA=
X-Received: by 2002:a05:6214:8004:b0:89a:ebe:1cbe with SMTP id 6a1803df08f44-89a0ebe1dd1mr9127256d6.8.1772537354822;
        Tue, 03 Mar 2026 03:29:14 -0800 (PST)
X-Received: by 2002:a05:6214:8004:b0:89a:ebe:1cbe with SMTP id 6a1803df08f44-89a0ebe1dd1mr9127086d6.8.1772537354344;
        Tue, 03 Mar 2026 03:29:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac51431sm583174966b.17.2026.03.03.03.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:29:13 -0800 (PST)
Message-ID: <a0dfe279-d4b1-4b62-b312-03f1085727fe@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 12:29:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
References: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
 <20260303-dts-qcom-glymur-crd-add-edp-v3-1-4d1ffcb1d9f6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260303-dts-qcom-glymur-crd-add-edp-v3-1-4d1ffcb1d9f6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a6c60b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=jFGaBxfI13gd1SiwFQsA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ybwmktFRb5lMAhiyr9ZL_OWPojMOq8uy
X-Proofpoint-ORIG-GUID: ybwmktFRb5lMAhiyr9ZL_OWPojMOq8uy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4NyBTYWx0ZWRfX1Vo9iKYc3zg9
 mSQ3Z2RHMEcyfGPlY6Y1nsrqPq/oe32xmRM9RaUp4theQniEu7yGyB2unZu7hPnOxBoYX3Vs3HT
 fo1m7ee2pWZRKtZ9v+Z95HYnRzMkrB0mndOmNMPIkQMuubSOvZrHdWM2GwXDi41GP72BN3asiJ5
 GXGl9dUAB6DObOpgqQl8kSavpwqPZmvtMSxMmqshjYQ2M/aUQhZvza1dMSZlujt76PO1YV4v7eD
 Kwz4Abi/Q6xkALHd3LXJru4tlpCwf+9rG2RjF83FvkSwCQP2zPypE+fwXzKv0QtvoZPtcTaQGFe
 8/L2dtSFZABPAuaW/8mWW0Yy9EhcALsYQev7Us98LTX8qpjHIrWW75JeZ7zAI5GzisKeTfNXRuB
 igSNuPwCU/3J7p2gkDIr/eDbam9yD0BMOSs6RCDt3naZ89RI9FAKMBnmuX3IixnG1G720gevCg9
 Indy1/QNRtsTNHrsjZw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030087
X-Rspamd-Queue-Id: A277E1EE57C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,linaro.org:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270447-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/3/26 11:44 AM, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> controllers. Describe them along with display controller and the eDP
> PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> clock controller and link up the PHYs and DP endpoints in the graph.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

