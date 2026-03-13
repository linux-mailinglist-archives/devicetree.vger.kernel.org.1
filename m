Return-Path: <devicetree+bounces-275193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDXdFxUEtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F04782830D1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9B3331D9B13
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9FA33932EE;
	Fri, 13 Mar 2026 12:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dkZ0MYVE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g7bbJvKz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC0F1D6BB
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405038; cv=none; b=cDkkvYXDcP6q7+1ivTA2809y2ncblJxymGCdlX6/AvgTJpPUyqNWuNUt5xji0Q4k1qmeeFQVzgkIvWjbdv565rJzlmsznLAurky4a6M9wQihWU5Ao/7ad6av1f4vV+GDeRCDJ//BIzWR4krkWbjIaG491DCeXTdu/HYx2nvLwVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405038; c=relaxed/simple;
	bh=wUYaao9N554DKjtnrft29y8GPGyASDsSgMMgoiGJFHo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=InctdnD36UbuyS8qwCJufew0oe0rHeKwsPxgrhgBNtzKYb1Qov95Z0OK8643N9AMPakqabH7EAkquLPW3TeIh+72Jcd4etpXI/N+4S5h//mP4Q4WCO9bNhQwYpe3ey6Kh9TzItDSssf9QTwtOjOwi+zeINhonj7sBsYXdSuniUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dkZ0MYVE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g7bbJvKz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DBtFQH4140698
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:30:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C3GFh0qpkwl9z7+vFu6yN13UEs6c8A9nSty3yTW7bzI=; b=dkZ0MYVE1XaZIF4W
	kX/eAhUvYvHQJn35HFqzHhOV+U7YpJkR6CW0E0SIhpGQs8+9cvJXYUec3ZWk08sT
	hmBpTDjNzhu6jwK6zDiHmSnbpfwMCP/ozvcUR6XqGWF+lZUhyD9H0iQCtU8iRw0e
	yECg9elPsfD7Wac49obwZebosEyK5xKN4hD9irp0I6U2yg+nMSKkhFWx99QDwbaH
	jAlVnNuSd4JhY8B2yjRaachK8+L6XemS5TK5K2ouxG7VTE9jN7YISEXrl0lKeJJg
	WD8N/jdTNtGQj+En6uH63tZ3t9ax3yl/A1hcFoOHKtndRWSl21C9NHhEtBwwCaoL
	4brd5g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvbn29k08-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:30:35 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd7a2c535eso101388685a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405034; x=1774009834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C3GFh0qpkwl9z7+vFu6yN13UEs6c8A9nSty3yTW7bzI=;
        b=g7bbJvKzlw+nji6DGTK9ia6fnrywMirP/G/Cz0nCUBq3fLlb8MvL1fW7/pu6tZ6uWE
         VOi8QqNbZjlx8jJ22q03L6VOuUCu6M0wAIzJzaMAo/kGGbFhB75TSxWaRSI0rQzpgaWd
         sWxeQ1jNT1W+Jnr/DsNryWasqc17MQAcxTSxyes0ck71bRV+evp8luViOCBxxrMQsBRT
         ma2OIggSnvUilZ/xHLDMRlf5sswRI7fTtX7qnCb1piiEr+oXRuxpoFaIxWs3E0g0p6ho
         Ob0ZpAK0LrgplHwV/hriMDcfMMofN63B3ZRClf0vGyCqT0E8aUV7YWXZ2Y2ZCoCL9FQ2
         uTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405034; x=1774009834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C3GFh0qpkwl9z7+vFu6yN13UEs6c8A9nSty3yTW7bzI=;
        b=Syj6ctAfWQSTeua0oU1osskF76XlHxy6q5bEuEDX+yy1E7XlIrC9bFtXtc/gHgpTsA
         xVftYl2zy6wqWYgP6yQqqjW4GFzu+iYPsUKA1P7RVef7fOxma3o139zaWj4CU3ytgMAw
         VBM667m9bdb5MFjdjHNyoP9Doe5a4CREOb3+9UhKZynmeFLcg8QHP98Eoti3/7iX7Nb/
         gjCzkIh4jXcaAsAWVztnq7ZDlDBMPZBH48SD1sM27xrGGvjS93w1ET8MuMwd/2N1MYEB
         qRLg0zE+Ej7xfVrrdvV5k1160D54PIw62/Vp/Z+q9JETW4G90222/bkVhRkm3BrrZb9R
         kU3w==
X-Forwarded-Encrypted: i=1; AJvYcCXG1umRiiczJgMSNs/VvGjin0DP8fKU2LBRSmuDEWAM7ZgsazSI7rsb6vVnR0KJ/b5ZKP11cQbCWctd@vger.kernel.org
X-Gm-Message-State: AOJu0Yy92OqnBaIYRQVKF6Y0ZK17/8hLsnqJt2cbbTFDvTAzYK5GsmHw
	six0e2gn9hS5L9XXL/eTq7EqzJzcYwpVYFANAQ0ND4/n8yU7tBBXLOJ4T9V92rpLwG6WBSoGCYq
	26qHM2x9yyewA4iMfxLuiPH/yVUiW6p7XQJhI5X6E7ERT+pR1QaZ0Nfr6ED1uo+91
X-Gm-Gg: ATEYQzwZyDrfBH2glW50edHyXCX76ZDRfKjBGi5CZiYvvd9OEX9K+1Cvpt3acHg+rTo
	idEnMd/XgSI51S3Qr5X971REQkvqdpZYT51talAVkBk6Ha+nCPd6l9vW8EcMfiEW8w3CWW/a8I7
	NTxJ5TUpgmS2D2HD1av7yfBIpb7jdGyIo8Ih79xlFG+pBiGMXp1NBW1ft7/Me5GxCaxNKQdTVDa
	3GoEugoEVl3TbdGgM2y97Fv+LfeUEoNgt3KF/b+SnsNkM4PWbcxqxgBU3iagjWzPJ4k/QuQcRR+
	ziIs6gzglUFeEV2cciePUS0scTwhNVcKQPBZiUW4DqHH/EfSd5UiFY12Jt3z/pdJeeZ+spa8ti9
	peMl9+70haOHAGhOhfmkK5Qq7sn2E7bGKTDVCyhV4+Qwi6x/YfZq/5hCxMr6mHUzUKOoOhiGBdm
	/buEU=
X-Received: by 2002:a05:620a:a0a:b0:8cd:b6e4:81f8 with SMTP id af79cd13be357-8cdb6e48742mr186908785a.6.1773405034522;
        Fri, 13 Mar 2026 05:30:34 -0700 (PDT)
X-Received: by 2002:a05:620a:a0a:b0:8cd:b6e4:81f8 with SMTP id af79cd13be357-8cdb6e48742mr186901185a.6.1773405033923;
        Fri, 13 Mar 2026 05:30:33 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6639fe6dcb5sm781766a12.18.2026.03.13.05.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:30:32 -0700 (PDT)
Message-ID: <a4ed652e-163d-4723-a6d7-b942d4acd9a2@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:30:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: sm8350-hdk: enable Iris core
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
 <20260312-iris-sc8280xp-v4-6-a047ef1e3c7d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260312-iris-sc8280xp-v4-6-a047ef1e3c7d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CYjD-4hINoxO3HV_rD332c_x19p42klt
X-Proofpoint-GUID: CYjD-4hINoxO3HV_rD332c_x19p42klt
X-Authority-Analysis: v=2.4 cv=ZKfaWH7b c=1 sm=1 tr=0 ts=69b4036b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=NMZvMjamZalpy3N7dnkA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5OSBTYWx0ZWRfX05qlYmQkVF2U
 +1OZ/DUlkRjFiG96RiODF65hUp6g9MYCiRhXPcvH7PTy02C7iPkRsr804eYdcTTw0f1J0+QzOwW
 1jhBRxIw30OOtUhD80b/pZ5jFywPkr6XF5l/ZGi292OVkKbPXR9PjkBSCVb7MW3yhv4iX+9qX8B
 y8wIm2fejHDK8U1cHxfZPpWUa+WV+3O1vrN4X+6kxq3Hwh3CNc69lV5c/cRfTqytZwqRi+OFARy
 ZtRQpzrcJ3BldIX7/b2ECtbi+hSesOShfF1U7Z+JOdNWnD8lm4IzgPLwVjW1b+/kdFjtxyNEAUC
 83vlpOZyp2XFEzkWHkzfEWAjYZVHUxE71EAfQtTAcVRwZH+UgsoGf3Y+8gQjE7ecX9/WjLJvjTy
 HW0gXQzdA9S3LBg2TtLfLhzSHEno8mWg5+kUGOnAfOb7L0EO66ZLp/oG7LD0kxUFMkZ2SAVyw8X
 hxI9J388yjAABN22rtQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275193-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F04782830D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 4:14 PM, Dmitry Baryshkov wrote:
> Enable video en/decoder on the SM8350 HDK board. The firmware is not
> (yet) a part of linux-firmware and needs to be extracted from Android
> data.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

