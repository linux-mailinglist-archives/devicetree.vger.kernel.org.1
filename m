Return-Path: <devicetree+bounces-191473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A663AEF68B
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 13:29:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98CC5174CA4
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC76272E60;
	Tue,  1 Jul 2025 11:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dIOPd/uU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E55272E4C
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751369391; cv=none; b=kcD1kkNkIh7QMzpEEU7lQwN9rgFcnxpc+35yDqboch/0jIUex+YH61EpoITo1u4haRKCuICjwaicRb5FUXDwKNSENWqdlh5rH58q9+ZFxPY0uWGri7SftyPtQO1n0Ht6GwjUzujGFF6XeOrVScsA/6bYPDU02y5WKTxpc9LXvsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751369391; c=relaxed/simple;
	bh=aecfqIgcgMS8NEZYswyAdEeWrhP/4nJk5uApShw52ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LLBBnnsx1udJa/y4b/cFHQumd4MUxybhzpI8VczI61bVv4PUctmYwZiNsUqjhJ5ysXfn2StWQVY6ZgN5m5AEegun1a7iO+E4RqUzVEHOi51Z/DIAhH8P0KSL8iDRbTdCVDCiRuiSEEu1dMnp/7TtbPw0WMsd1SMJ+xJcicdzjHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dIOPd/uU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619ppUL007049
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 11:29:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HeCUTIvo2J1PhAD2wDzz5Zb5
	XHzZC9YruSB6ZaOdH04=; b=dIOPd/uUrm1KFxuvaymajs9D5M53DEntgx/u9nzu
	yQbOgJ1n5XwxciyfA5G3aTNFJwP314unQHYkGGGdAd2w3e+YFUwp1wjNOe7yuQys
	mwPB4uMJCR242jdy9hjaWPvRRi/7p6yiSADi+3EY5WU6NGy+3RzQo+BRosJKQmfB
	pnKXC9sTCSedMq4zLhi5gKQcKVGxPaBYlNRuUn4U1OR0uGamvj0PlV0i//3ZYgv8
	pmDcdocRb1gQlxbUnmRD8SGB/B/LyXtUiQnI5c3Q73pNXKGJcZ/qUMduPtHsnaIN
	tCjbEZlJC3RBixAoY6Pa2Z9AegRiSw7Qf+r6oMe9TRNpeg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kn5jd1rj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 11:29:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c760637fe5so928683285a.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751369387; x=1751974187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HeCUTIvo2J1PhAD2wDzz5Zb5XHzZC9YruSB6ZaOdH04=;
        b=rvZSvpoqr/Ru3Ef21/t2eACYhLky334hRWjN7x0YKk4hY2f4xQir5lfy0XN9K5foZF
         pPZUco8eiK2NkAz1rBht28s4vn5XAB9tnXApL8vUqaNcDS5YNiqoiDfi75jWl0WmWhtK
         owntUQulaJAcnIeOWhbA6/ZJbopCP5E3XNx+oDM+hSmT7agG1h3GI0KEFe0JNRwKtwE+
         Myr5W6TaJkYeJysNVJhh8HgbwuMEdn48pX3mMO9jTqPRZI0Qi+JWyf+4uytPnnBYFAGY
         QCk/YD5QfXb32xuOa3HmAxBtrwNW45E24j+yoezSq/q96C94MzyS16Ork3T2Q8r2n3CX
         1mxg==
X-Forwarded-Encrypted: i=1; AJvYcCXgvaUpbX9Fthihp3QqScentU3ANFxx7k1mtKYbZjYLrPJXV6avLhwPJGnTFhJahOA4fTjAC3rxDtIy@vger.kernel.org
X-Gm-Message-State: AOJu0YyhH8mMynCuDGqAWorXz2TNC+RMN3nUdBaPjEJJ7ksRecnWgu5z
	vux6JD3timP6Ee9zCKDPWIaloQmLVYHoCrz/EnkL+OuF1X41665mSr0pUQq7CFqELcair9ACfef
	+LhuUZctLkBfsnf1DBfKOyiBjjfWkCV2yY9O9oJNVKmj3uNgsL7h27XTeFuJNEaM2
X-Gm-Gg: ASbGncuyq8Y/I0bQYR9EzFVCs3HheeXVXC/oBOY4VSHD1lLk5vDdxutctl3ianQsQFp
	BFP5oC5M0O4chhwSWAfnB4m9XMhv4EU7/aGde9VdNHrgxtUvMZ+vu8+7QCfxB/RcQa4PQ8H/QZa
	SphhE6vtXgyW1PtzpELF9VlOitMT3HvU/Rhns8/semazyuZHYgy63gXbSCmfCo6sAo3BXLxmr3o
	80jXm1zSmHE5Kh14ONdi2TUW9iNu/Jem/Ky76ZiHS1XRmMKMflgPTcZQjMvAmpaVke4SZMGIkJ6
	j3s4c4OnI6WtSgy9m7jXeDLQwnK3m3fWovTTnZJIymqR4tZTx0HO1oJRC1AhRBEvnfKTD0fAzRn
	7THdgVFecZ8vsnnBCd/QBIh1SRnKQaPrQw2Q=
X-Received: by 2002:a05:620a:29ca:b0:7d3:9025:5db7 with SMTP id af79cd13be357-7d44390de6cmr2236947585a.20.1751369387480;
        Tue, 01 Jul 2025 04:29:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlEPq2TzJvQkQhhpGX0KRHwjYHWsll+9h6ewOO18Z+pocOSxBGiQFARtIuoG0qr8FCuX/VUA==
X-Received: by 2002:a05:620a:29ca:b0:7d3:9025:5db7 with SMTP id af79cd13be357-7d44390de6cmr2236942285a.20.1751369386888;
        Tue, 01 Jul 2025 04:29:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2da80dsm1785087e87.220.2025.07.01.04.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 04:29:45 -0700 (PDT)
Date: Tue, 1 Jul 2025 14:29:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com,
        stable@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs615: add missing dt property in
 QUP SEs
Message-ID: <3qji4ppbdd5lvalx6qmbr6f7jsvyhyulfshchlya3ajsykbkel@rlu5uwvc2biz>
References: <20250630064338.2487409-1-viken.dadhaniya@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250630064338.2487409-1-viken.dadhaniya@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KtJN2XWN c=1 sm=1 tr=0 ts=6863c6ac cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mQHHEpzZ3wyIVHhDumQA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: jSq5puQvZszetVQ0L90kLiLD1rv2JtL1
X-Proofpoint-GUID: jSq5puQvZszetVQ0L90kLiLD1rv2JtL1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA3MCBTYWx0ZWRfX//coOVveFKVG
 5Cu2yQwJbj+3pvfzkTvGfqed3TH7FuIJVCnNLp4i3LTX5I9yup6Yg+vTzz9W2z3JgOr2/AbbKz/
 eW5AqIZvaHfhZB2SAxCnk0xYcULn8C14FtzK2EJ3V/fzyj4x22NA64JsQ4Y2qYkKLydVD0s7/Wt
 ZvpWvIQP+fM0BhXeSwzrZ2OKCR+XeI+0lKf3OsYAMluaKXz4V4u3M3hdB1uRz0V5xR9u9UzVF+d
 HPlh3ubgP/sNdo5NqL8kFKiCF7sFOFGvP1jq43VyHrELtVwpiZ22UPi26ZQy62CAKDRSvdCgCzJ
 uTeDtYgAZWvfHFOrGj/xIfte97UGqn7MNisdlcDXh5fIQgi57rLF5EFNpKFfkzDRzl9k1q0O5+/
 oGjmWpOsUnN0TQLaA+N51QuRD7RWa8ybOq28nDxYJB1ys69R3juSapensYsr1iPBnFxoLgVy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 mlxlogscore=693 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010070

On Mon, Jun 30, 2025 at 12:13:38PM +0530, Viken Dadhaniya wrote:
> Add the missing required-opps and operating-points-v2 properties to
> several I2C, SPI, and UART nodes in the QUP SEs.
> 
> Fixes: f6746dc9e379 ("arm64: dts: qcom: qcs615: Add QUPv3 configuration")
> Cc: stable@vger.kernel.org
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> ---
> 
> v1 -> v2:
> 
> - Added Fixes and Cc tag.
> 
> v1 Link: https://lore.kernel.org/all/20250626102826.3422984-1-viken.dadhaniya@oss.qualcomm.com/
> ---
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

