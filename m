Return-Path: <devicetree+bounces-200129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9017B137A1
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CADC43A1AC5
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C26A25392D;
	Mon, 28 Jul 2025 09:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KiBrqKxL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B047DA93
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695521; cv=none; b=UCBJL1YoDk8kPORlV/h9v6xUQMhVPunR/GiBtYchZSyqMgxREqg/ycF8oH7fpzJ1s8uFgefHRsNtE+rJL5ReK0Y7SZIkr1qMbyXGLrcmRXbjKsIcW8qaxyQAuE0deCiBcKOjFhJyb/o0bovHdd9JMYQ7QjO3Exw8pZ2T2iX5sdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695521; c=relaxed/simple;
	bh=q5HHSBNpMysbC45WGfSgwoBWT0aIRRt3LCmk6oh+hB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lGmBiur1rmd9VTbk+GOJ4PIQHkV0icN1rPcgNdBeEGvven6pzIk1PA591Y7vKvQMrcBjh7kDuS/T4hIwp3RGMjtO/rKKKKkrt4XdcVgTzbG86Lc0Tw1CZb7qNHqd2id3F+ZAI2VphMojzlRqSCc6z5FtL+fiFfH9H/SvRuSeYCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KiBrqKxL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S4rVLg019678
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:38:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ymQQyXq4R8zra2CrX8sKtX7E
	xyNAkEiG1xeLlCkLbxw=; b=KiBrqKxLqj/ZYogs4OCYIBDXfkmLyl0zQdf7+sl6
	hxufwOwSkMytyCfk08Noe5CVT4ym5A/nJjnJTOniULfV3G2jYOsTgu2jm/OCodxF
	lyp9h5Mv0N9Rd1bdWjKg2Ck7SQjjgDPVMkb/jqXaRESyuAo/tFpZWs/eEOImcn80
	6mUYd1Sqcom4w/JIPAA+j49vHD9YtXXru+CauIRn1LXrFyL8aMtVR09WwMiyPEZX
	JVdnqnsXaYSaH7BPHuqoyS0XKGSE1yraOfSvDbp4b6uwxglezrMbPWkbL8g25Kq9
	J/ihiUxqPqzRj8a79eskLLnXnmeaWeLYNGKrYbZLGiDACw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qkyb0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:38:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e34399a08fso1119642785a.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695516; x=1754300316;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymQQyXq4R8zra2CrX8sKtX7ExyNAkEiG1xeLlCkLbxw=;
        b=Ru9XEdNygbhNWQfPd6CQA1VVtSxJKiaDWKDbj2mYxq4eL2zFGYtKzjfL2HdtNrY+5o
         qm7AwcR+1UGrA4MA0DTKkfsidllTSkbsCbig9CZ8RDK/KyUYFRtX94LvFWIrrbnxbHlE
         QhKDfwSk/4ZAso468/WrLzi7eruZ0ziuT1bSdWK/68rgn6zSdHhjSiUfc/Eh1DDrZ4J+
         gQRwqH83IlodWsIXxiZ8DZmrPP/OPIB0+JDmtPMhiwIIYZlgNBmPhMBuxD8MyQBw+x7P
         iX2qrpY4krqNd98D9klDQBjV27UVASI7kKNSX70MT9GcLyK36J9Fy5H3rh7frhrF3gWE
         yl2g==
X-Forwarded-Encrypted: i=1; AJvYcCXUfAcTm2Q3iWMvQ46qMpAmUGSSS3APttrLjL6wSGl0lE1oLwqetLaVi5SEXHrnxrH+X/4GKyk4Hxce@vger.kernel.org
X-Gm-Message-State: AOJu0YyJYCrHoCQtx333g5MCbv1G6zyIC4qkT9PnggnAR91yEVbPO68O
	H1x8kNfq2QCe9IIBuB+awBqbN+ppERuXASM7591oQtzEKYAjMInOCY1XqRYaNJjas63qmVMuOcL
	ken7BCY2JoHrRWBF1hj8HwfDgrRXwteYkNCI89aWbM1GL+aQNEj/MNlessvMY+fOJ
X-Gm-Gg: ASbGncv1th6vJDp7NJjGBAMiDbuOTSXlcRpb4lnXtycwNpdj0/e/KZydI/n1AZvq6YF
	i02e8BQ7Hfv4j3u1Pbsw7I7HyNAUofO52S4jdefisSIghRBNzMGUJP0oaMlpvQnW06bb6NIeO85
	JNlJ7Xf+TRTj4UBQTfqrM4F9PVd8Kz0NehD0qA4JA2zIt4pfKndshvVItu/NLK87eFdGs5hX8RH
	6wHOQCHdYY80YSfmCqKinwICJdHl+aXDfHI2xVM59Xff0Mpm6lRWzsEJ8NEpzwfAVZ/43CC8Lop
	iWZ+X349RpCDYP6FgSF/zTzvDO7v0niaINo4BuHcRncX9ycJkjGR4tg9AQB2Usgst3J2cq+0yLS
	GAKEUzbz+riFEtm+lAkQxsmU4nQ1/sgwNY5nA5l1EjxYuaYKaItCb
X-Received: by 2002:a05:620a:578e:b0:7e1:9769:97c4 with SMTP id af79cd13be357-7e63c1eb5abmr1168010985a.47.1753695516295;
        Mon, 28 Jul 2025 02:38:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG10kGOUWmTQsYTevtsiVFMLYylA0uFADXbwe0E+zdoCeCvqpAVZeSZo0I49TRM/gK6+MR+fQ==
X-Received: by 2002:a05:620a:578e:b0:7e1:9769:97c4 with SMTP id af79cd13be357-7e63c1eb5abmr1168008985a.47.1753695515786;
        Mon, 28 Jul 2025 02:38:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63375a82sm1222565e87.134.2025.07.28.02.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:38:35 -0700 (PDT)
Date: Mon, 28 Jul 2025 12:38:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: leqi@qti.qualcomm.com
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: Add initial audio support for
 Hamoa-IOT-EVK
Message-ID: <nbeo4uywsrimfjdvvire5lzkebfxddwt3s6wpiy4rurm5avbbv@7g64jdlx3hiw>
References: <20250728-initial_audio_support_for_qualcomm_hamoa_iot_evk_board-v2-1-58aa30b60c7b@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728-initial_audio_support_for_qualcomm_hamoa_iot_evk_board-v2-1-58aa30b60c7b@qti.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA2NyBTYWx0ZWRfX1daTg20w/W3g
 xCPOeJmF0o0rYRe5GWxqkcfHr2JF4/Fc7U7QcdgKlWxWS37dJz1+dfYhNbPGT6/mGhUnoUNmlGw
 tqagUXvCbhIlRgaczAvJi1GUsrsATW95zFPIRCTyIgTx4jOihXPVyYG2mSrQMPd+vRGwmco4LH0
 FFqQr9p3b+CQin08ja40ViYxImT44h+eKpVWubxb+dzowLM3xvgV2N+YCDQvpkJPfn9hqYJznoJ
 Tl9gMiIbAyUfaxwWHRrOCw8qsSGLoicvzEeD+aHmPDP0VVIIulhkgsRKRchRjyEiQX6cSKQnxVQ
 e3OU9nWLH+VEwVtKKLpraLzMEVFweIXiYDx0Li5XiQbdXsEBhfbFdWNohM2X0mECU7omwPIRs0P
 7vQMh1QcLpQrDXnryI+HoMuU8iqvshUxnnJUmTGDOZ5kVLD80qHxvKnVHWKolos+JHs8kqo7
X-Proofpoint-ORIG-GUID: ztLHlN3Xgng8P5le3fZ9HczwejtcdBIw
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=6887451d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=-V7wvo64C1hL35F_OcUA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ztLHlN3Xgng8P5le3fZ9HczwejtcdBIw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280067

On Mon, Jul 28, 2025 at 03:16:13PM +0800, leqi via B4 Relay wrote:
> From: leqi <leqi@qti.qualcomm.com>

This is not your name. Please fix your git setup and reset author (and
update the SoB tag) before sending this patch next time.

> 
> This patch adds initial audio codec support for the Hamoa-IOT-EVK board,

See Documentation/process/submitting-patches.rst. Please rephrase your
commit message.

> including WCD9385 configuration, micbias voltage settings, GPIO reset,
> and power supply bindings. It enables basic audio functionality for
> further development. Basic test is good in Hamoa-IOT-EVK board.

What does this mean?

> 
> Signed-off-by: leqi <leqi@qti.qualcomm.com>
> ---
> Changes in v2:
> - Updated author email address to leqi@qti.qualcomm.com.
> - Clarified that audio is validated with this change.
> - Link to v1: https://lore.kernel.org/all/20250723-initial_audio_support_for_qualcomm_hamoa_iot_evk_board-v1-1-816991701952@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 232 +++++++++++++++++++++++++++++
>  1 file changed, 232 insertions(+)
> 

-- 
With best wishes
Dmitry

