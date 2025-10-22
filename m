Return-Path: <devicetree+bounces-229599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6428BBFA2CA
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 08:08:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C95651A011FD
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A052EFD98;
	Wed, 22 Oct 2025 06:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bbT4OSXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7022EF655
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761113282; cv=none; b=PWDXltvTjWsR3xn6qRJd3C+fNq7Cz1GRRA1rnIQikGfF4yImhsQ9HsTFoSqSI50iMaSuIXk3s+k8FdpAWYZfNcBF61Y3aAQ18uEEzXmtBTRBX9kRV0pB54bMJ9hMBjvBYamInzRUUkEehK/WUMwq8vQH3xmKmO11z4FFd6t2/QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761113282; c=relaxed/simple;
	bh=Sglu3AHsdA56DCF5eQWWlJB8wv7B+UPJmWstntDnA1E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cOl/bgMkaE/HfWjlfDp8H/VaLlJkrGsSbdRrBcQezi9at46+WhUzmpKvjbQB2GXf4rOUXh+FsRuds1VyDaxEcmSiYV30s5yoCRGnV3a4Y5uvW0Uk0e1A2+Sba6NSDOKbXLenDu0fGqtR07JiiL5klYxPx/wYK78sa3xo5QQMiyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bbT4OSXS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M3UdK3024982
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jFeybT/HfJvpZ870zvEnUeOgeVUn3AqbfdXfhS0xCBA=; b=bbT4OSXSVy70ojXg
	GZLEUlW4Cd+rDP2onY9nC20OE9A4Z3PskmSXaO09KYOwqeugQjj578EncreSYzlV
	GC7+r5aQeeH5h5WKmUU8wRkcPW5GoOT+LzQJ35mFa7Neih8SKDTiuSErYjkXdgvB
	kTlzOCNJxr1Y81o0KmFSIfkH0kRHHosf7U8m9q6dh1+41RQKeRdIc17S+fzl1/dI
	3WhQsdi4ansztVJiWk7U6/1/mcexZTdVMJaQ+m3pKIKzRhHol4uvSM1TRTR35qcn
	3itZ5s2PjSJjglbe9xtW7qoJix1ov6z3GK+S/xyf0FiZLFX8NOCD10WjsQ+IbmO8
	8GKLbQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w83g3h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 06:07:59 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-78108268ea3so576315b3a.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 23:07:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761113278; x=1761718078;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jFeybT/HfJvpZ870zvEnUeOgeVUn3AqbfdXfhS0xCBA=;
        b=KSCm5O9Ek5CK08deoN8mZX9nTDGRzt3wnyO5gODnpChoEUpU8dmzn4vc9R0TLDClUo
         BLDrUZDeISSl1DCAhQGklyI0vSqx9jkqilFF9UzxMIHFiRK916uq5pHKjy0iN2uzJBTZ
         iZWBy//xNhIVG2uYmWtXZ9t7PY9GaOfRonIFqdyWJ6+qpRnlzw1aWcLYYMMufWmSMlLB
         7MaNCRBYzfhPsH1CtVz8Gj3rfweixsP7dwGMiOwiF3TvhHqD3Q16lKjeG3iZd2p65oGO
         nlHiAerhWhXtuhCd+Z62JFjFWxTvsTVun5gJBjpIiq5m/X/4Z+sOFpQsknK7Lfhf2Nfz
         wp6A==
X-Forwarded-Encrypted: i=1; AJvYcCVmOstBm9tdRFwVU1wMgrMbzaqhsTy2Wgop2VDqb77EHI6RpmG2mlO9WpY+VMYLN2Dbd3if7xCeMWCx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw2p+V1fS95WRe5/E2DIrWjSw3ofLZiWk+mGz1lFN1CJCoekBH
	YlUu2ZndnAba0l8jD5FHlD2ZFZnQF6SoEwKdccMJxwwDo2tUTVMeG1LsPQc3zami5u3lOUfsybg
	eCxlCGU6wDTcOFjqeLh26xhU24lqzNED0316BNtM7M74yFwHjFXObmVEzJegD3nSR
X-Gm-Gg: ASbGncv/CQkDma2buvs/qvN65UMGJpYVQhyGVicfkfo6XVj9qN5Ma1+NSr+IC5hzz/X
	Lqp89eFungu+TVsm0MZDwPpZ0JuChP+E3nm9xoq3QwSBQ6YJP/KPHeiD5vQDmEb5qypPi3oguA4
	2BcHGjYrHje/BGerRR3YFFBHfpZM4gBDebZrQhs/GgMAws9s+i27nR1Wcc8F0DDQrUOYlHyozEW
	IidvGdYhG/qu8l3LTe0gvd5eYfX6CxhEerOfhVHG5VYnt86Z88HQtsboK3EGSwR6bycTxFkDMeX
	XZ0vvEvyt7GpAbxjzhaENwbzNuh3RdgDleRF/tEo8ByjmRxt7PSa6P4ccmt9l77G8IP/PylaKJ8
	hNWqL9olufT72xlleJ0ivPjI34GMhmXgQYw==
X-Received: by 2002:a05:6a20:9149:b0:246:3a6:3e47 with SMTP id adf61e73a8af0-33aa6879675mr3426061637.12.1761113278342;
        Tue, 21 Oct 2025 23:07:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/8gASKFn2EzrOtCVC4l7qI8001cLdClTDmvQxCAmZe7gdni7lRkjnTKbSZfKe6wvNF9YvPw==
X-Received: by 2002:a05:6a20:9149:b0:246:3a6:3e47 with SMTP id adf61e73a8af0-33aa6879675mr3426021637.12.1761113277873;
        Tue, 21 Oct 2025 23:07:57 -0700 (PDT)
Received: from [192.168.0.166] ([49.205.252.226])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dff3f6c2esm2019810a91.6.2025.10.21.23.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 23:07:57 -0700 (PDT)
Message-ID: <c3a468be-39b0-5c3d-e4d8-9e45f3f6ae22@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 11:37:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 0/8] media: iris: add support for video codecs on Qcom
 kaanapali platform
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <579c8667827cb1ac5778b48077f4f84e875b69da.camel@ndufresne.ca>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <579c8667827cb1ac5778b48077f4f84e875b69da.camel@ndufresne.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX04qF5YT1c5Go
 TiW6bxZ12dKKaQzt2BcLmY02srhgGBSdNuu0pL4wlQ2X+1SeG7W4xW+DnPWyYYO/QKJ5wm0E8xZ
 IxBYUl9Hb5xoSVVVFm7i2q+oBWHEM/aEeaD1RBXKfJZRtpHmzROCHGUO13OP+Kpb/2C0HPo0/iO
 ZeMza/tghl/TTZXSvkMDjasWyY+hh9Te6RQeqIF3BsCKCOANj/hW4INTsRLH6u3B40SRm/N/jTK
 /QRSMPJASLdtB2PLisSrw5RTO2sX20Ox1JuTX0HdDuItmnIGdfYPtlo8zsvcPJJ2A0H+6kdlFg/
 jQ22aqyGKbz6ZpRov46UyYMezpc1GkJWv7z0zp5nN6l4GrqCUCMQTF9D52S99918I0mMiXT0NWT
 ZdJWXLBLFQC7NNj2nxryNVeZDBAjPw==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f874bf cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=FoPg1IWog9mqHsjG+aRTFA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=PfT22KiLOBK7PLsoD1AA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 8QwM7VRqKP_YQRtyx6ZjEw_PnpUy_IhU
X-Proofpoint-ORIG-GUID: 8QwM7VRqKP_YQRtyx6ZjEw_PnpUy_IhU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

Hello Nicolas,

On 10/17/2025 8:06 PM, Nicolas Dufresne wrote:
> Hi Vikash,
> 
> Le vendredi 17 octobre 2025 à 19:46 +0530, Vikash Garodia a
>> [  350.438406] qcom-iris 2000000.video-codec: invalid plane
>> [  350.447079] qcom-iris 2000000.video-codec: invalid plane
>> [  350.458821] qcom-iris 2000000.video-codec: invalid plane
>> [  350.465860] qcom-iris 2000000.video-codec: invalid plane
> 
> Just a highlight, the driver should only print stuff on default log level if
> something is malfunctioning. uAPI miss-use should only be trace on loglevel
> manually enabled by the developers. Mind fixing this up while at it ? Hopefully
> this will be obvious to you next time you encounter it.

Agree, this specific log should not be part of default execution and more so
when this is not malfunctioning. I would remove this log as i see it can be dropped.

Regards,
Vikash

