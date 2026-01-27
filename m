Return-Path: <devicetree+bounces-259848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBuvCjuleGnVrgEAu9opvQ
	(envelope-from <devicetree+bounces-259848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:44:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A1D93D2C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C17CC301AD1B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32729349B11;
	Tue, 27 Jan 2026 11:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kmlNX7qr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TQwsMGnd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31B034886B
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514257; cv=none; b=NmufGe0UmfloyNWB27SKyKZbKAJW+mYPJBNynWb0fG+1GFkInYdSJKCMSWeqbO7/7333Du2/+qZ8hPcIhyN1TbKXmUlPKnJU8g/pdRrbcww0ytsOvt79VHa9T/hdg2RCgTY5F2NvxxtFWnpqrGSyFcN4ufPeatnhxF6+076J4G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514257; c=relaxed/simple;
	bh=uhKGH1/X5QoMDU9Y909puh1TcbXRSNGvHFAfBecwQIk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K0Qq2hQVY2d0vpszLMUrh9p+KRbnUN4AH9rE4hlv8SGJsyl5g9rcK/sMVLUbj18oKpOi9ItVsGn1DoavOkJ3TzguqSaQkc4iUIGhg4eXOZV7RexPkDGTRASxf86HMR0cU6V2WBvuTgoWvTjMnpP5q6m926hSJL4cjObp12jZiPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kmlNX7qr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TQwsMGnd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9vYW2171435
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KxI9dE3xrBh6NtBWfmZagSJEXbQI2QWoCu3AI0NzVPg=; b=kmlNX7qro/0T+8WO
	PJuux3zvpV4AfvJ0ZQoYw9ldK2a5D3EGSpKTrmNKz9j5fWKUv6guHKwEQQDskcz8
	QDG+jrJri5asL0/VQ272+TTGNJrJxy97a4wD7czTviP7XwAtlt1BVOvFUJz+5fLB
	km+oFy/Ja6tzkCa+d6gfwidTimR0GAtjSpqKrnkTyCJFvI2ze57BSFO2lo7xveeK
	Ub2bvsCKhYL/GvESBGG0/Ki9WgvdKr7zHZ1d1KBePoQ7i4ohh9/xA87+J2rJRG7y
	7uov6AHlryrh1zHoVwQMfTNWW3v33kS8KLZWgJBSzm5HqThv2vW//y5Qc2fN1/KV
	WWF5xA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a2n36-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:44:15 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-501476535f8so17659661cf.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514254; x=1770119054; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KxI9dE3xrBh6NtBWfmZagSJEXbQI2QWoCu3AI0NzVPg=;
        b=TQwsMGndhGy+ZX5Vo9/s18BzYcr3YSyBKHgbZOovHESzWRPoQQz07X0T2ar8d6qbHh
         cIUnd5G2343OWoxvMSPtqZt2UuqdQKPoNWRoWzQ1WiBSUp13hmFiZtdCpRGKAfbcvXg1
         Lhl0+oB0xmKVW9ILwWc7YxVsRNfqWVoolcb86CqMb19CskbgIAxKjpNQilcpWFLUTxMf
         bW5ii1HV/ONLTJkRhbQslD6MI2KSrqPqPl6XZv1DdUd/iJZ2AOC55PttVuA8uR+Su8KZ
         Xg/M5K3Dal04qvRryLn8V6E8gg3TE9Ness3yeclRmP/xgUh1jjheClZlM40z6jPlJkqG
         ET3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514254; x=1770119054;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KxI9dE3xrBh6NtBWfmZagSJEXbQI2QWoCu3AI0NzVPg=;
        b=pR5yFerFqLMc6hYQBKupf0QMybcfLaCK/9S6w8h/NwFCyL0m4T9uOm0hbekjmQpX0h
         Iz/zQvodR9zurVOctIMyHv0f5I+VvQ7k0G6Mw0XvJpBuBa37go4APspIeg8t1JQa2/G4
         j+lwHBVxjFWDzLkkGi7V5noIi1KNNmr8O6yuwYIElbhG+Tj5ZMne5KOIP7b4NscJ4noR
         UForVH3Y/aDNkhmLqhD1ZNQvu5fONeCsNmD3qsducHRE5KTEoYkWWnGnOaW9/JJMC6m8
         nsgCsuGhORqG/++OtKM6kSpoy/Wniuram7qkTPSCiK45VLI4bnQ5zlGNEcUUnfuCfrs5
         DeOg==
X-Forwarded-Encrypted: i=1; AJvYcCXbSpyTUmRRsVSqHvqEZ/wsM1obMMFLldXI+L0Dy+aEWHB7G5z6dXPEz/JTN52tlA58Saj0qHD24BYt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+uRFMkvIBhFEdbRJk6sF1/yrAm2+AYmNjDMtaQXLPbv/IgVQQ
	h24jZMekIDkAMDhei0dQo2u2OJ5x82U6FUm7g00sjxAX6fgHrqphsNeokX5pHPDQDiiqcL7x8DH
	kcMkr/QOTbwcfokUeeblqpGOK15hEjzuY4A/A1EtBohdimq3WVfFG0m7H0Qy/EnzS
X-Gm-Gg: AZuq6aKfmLljuhYgf13FJY3iFqFDMMntvbxf0ASS+tcM4v3qyRPB2gskMmVaKhO9THP
	Yan4DAPcMSPPVJBF8ACwuR7s5anrwnJugwa063JSG9QOClyt19nPCjeSVRUHbThw3rs8w5DFY8w
	+gvhqjdqUJcbdCZMX28WgoC8TK+5UKPNgHa5mAhFiy7Op0tPD+inZsVSmUkhyR+cxNeoqHNqbiX
	s1XgT7xyXViEOXUnk4DbJPQgaTlN1SXdtkG/zagkp9Z51N6VkhBWVpVAGcv6OVR+6Cj3dBs4rCT
	zqzjc2rZ1sm4SDbGhcCwvqRb7aZM/fzB1afIKP7lIJQKk+Buks3fjWjLW5O2lKbtDjQXOtt379E
	QFu/Oh/sGiYxzpOMm5gkUOPvA+gNjsDVgramhD1+tj3BcQ2vl3EGqb2MZlml47fzGx94=
X-Received: by 2002:a05:622a:11d4:b0:502:a1bb:632a with SMTP id d75a77b69052e-5032f6733cbmr11973971cf.0.1769514254100;
        Tue, 27 Jan 2026 03:44:14 -0800 (PST)
X-Received: by 2002:a05:622a:11d4:b0:502:a1bb:632a with SMTP id d75a77b69052e-5032f6733cbmr11973831cf.0.1769514253738;
        Tue, 27 Jan 2026 03:44:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b9489a4sm6437799a12.27.2026.01.27.03.44.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:44:13 -0800 (PST)
Message-ID: <b827b1ed-e171-4c5d-936b-dc86daa1f540@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:44:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] media: qcom: venus: flip the venus/iris switch
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
 <20260126-venus-iris-flip-switch-v2-4-b0ea05e1739a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-4-b0ea05e1739a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfX9Dw/K6sA5vPq
 iMsROpMbu1J0tZj8d/3T2DiEFkkzmeEhd9mYnS+SLHTQitltL+wUDwCTQZ2lWSkf7nkeIhE0J8X
 9evok3MeG2iQo7CDd44dMiDfMSV4r5m8bazZ9GqJVR24cRCavpy1+uCLAO725oscHgFSxpLSLjP
 yw+QW6axNqdwyKb6IKiKCO4tJMhpI6RwrxKyInnavEyWHTqoOwassifcw6Oc9oUEtx1agZy4uK/
 eNpwDooyvdPhDtbsMmrj1S0Qzj/B05UWKOESrta3gOacVO8iFtJKr6oZPo0mxRIlU79B8WxRO2N
 wPduKxV3l/Re3uWZksqtLH7QL/Kn5iAHfn2OMFYUH1uXGGOnGvdv8c1umL5l69jbhl5E0YJIb51
 fhYtI5/adBzUk0QMkZuPcVYRaIxZ4MAsMLXcSiq64c4PHhln0Owx5/NWjs5AenBc1mYpm4wLAxa
 /4vJW/OHy1kP/++LGgA==
X-Proofpoint-ORIG-GUID: jo1JmEbI-U6b4i3nCifobyHj4T9Pw6nD
X-Proofpoint-GUID: jo1JmEbI-U6b4i3nCifobyHj4T9Pw6nD
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978a50f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qmvEUQ2JdN4waMkMqIYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270096
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259848-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: A1A1D93D2C
X-Rspamd-Action: no action

On 1/26/26 3:09 AM, Dmitry Baryshkov wrote:
> With the Iris and Venus driver having more or less feature parity for
> "HFI 6xx" platforms and with Iris gaining support for SC7280, flip the
> switch. Use Iris by default for SM8250 and SC7280, the platforms which
> are supported by both drivers, and use Venus only if Iris is not
> compiled at all. Use IS_ENABLED to strip out the code and data
> structures which are used by the disabled platforms.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

