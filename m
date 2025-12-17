Return-Path: <devicetree+bounces-247356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4612CC7477
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1553303372F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5F2033D4F0;
	Wed, 17 Dec 2025 11:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S32ymEyl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jdjQge77"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33627328269
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765969710; cv=none; b=kX9vuXJSbQ8f0S/MIR/9r3QGqoEArtCptVmvoK+uY4OwCZBR4QN5dcQe9tffGmlQ0nEYE9nBTYlEB/d68QbERyZI+u/J3PBxZUFTWdin/9S9lohcMqTQKFFr/CRrZOmbll1XMX28K58HwCtjnyNj7g8FjvioUyaQEK1Q75mdRDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765969710; c=relaxed/simple;
	bh=K/P7eHTyZirO2llsqi8yVIiX+WvfeZNaSt01B/NBwkY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GWG2h7iqyLdO12LPhPN3o8LBrZer4pE7D5zOULakEM3wA91xe69zkiXmqhqtvmm/3F6bHtorfFuil3vj7X5HyjL1bgopmFRmo0cZhYwRYjhWQYRli68nHZDjyONTxXY84YAQqXTd/DOHd/9azdpRKayTGFFc09IGG75IJWWsX38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S32ymEyl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jdjQge77; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHASj7U1591239
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wAhEmJDGrw6aDE9DLS1cD3wr
	e5yQt2IBwsU7rJcpATk=; b=S32ymEylGEQCdDDuZSNb0UA76mELpafZpCU0buKH
	IEd/kVe5YMOpX+Uq4CS5+G+WE8ufPwOKDF7YcIXYhkrcn6T1q6RuE+8z06eyrt5T
	g5QWN5KQTYPtbvt/d+PoLh85YIFEC80+xyN6W8JhAFSOdBaRgVM8LUamlxCLimnA
	RyFPTkWAUyjJ4dpQEfejgPXdua02UerL/OBVPOcq4CRZOGa+pkUMNHYBRNraSPK+
	rsvnI8AMrV9NQ3M4CIKOTRgtF/4pB74dDWvPCBmUMCDXF82CqRuPls+DTbEY7Au9
	O8/xOafSpS92YAeRkBxOsU1i0GZJ6Tt0zYSjt7K6PCrbJA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefj5gd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:08:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee41b07099so67062021cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:08:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765969706; x=1766574506; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wAhEmJDGrw6aDE9DLS1cD3wre5yQt2IBwsU7rJcpATk=;
        b=jdjQge77DAo5s4baHEejoiu5LKBMQwCFR/oqfw9aUQUhQjfU3jQcPineW+Wp6S1kxy
         UCGD+vDDMTWcXoGvIJqmg7gBtOIcuZ984+nZwdR/kf2Wz8+kKn+1/F6nF27ygnZqgSvY
         FKZ1YIrtS0PIOl13ty9JhXplg0Oy1uYRlF6HilAsLnlM7m5MKudoi1kdsy2qTJ5U8L5B
         IONMFFdKDEPOXWI09bP8fx8Y54LZbxeRjj2RuzuY7cKUk40/8KkmirwQLvGkNsncK8iG
         S7IdqnJxDKgoxAxfKHRptPAlrg6qppHOPp1U5nD8Dw/63W7WZ6cf0QAzI3qZ5XtAv055
         1pHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765969706; x=1766574506;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wAhEmJDGrw6aDE9DLS1cD3wre5yQt2IBwsU7rJcpATk=;
        b=eHCP5a6mOSl/BXGMHvRhGrf+XVmUdQMQzrQ5jKC/N5oK2HUwvmpxXXgW71VWvcMBQC
         aASwzm5EaO30WmgtJ0xVk9+uHkC1VIQ6xviFnh2KfVkKfIuZ/m5uEv2OFAzlijP2tP8I
         HGfvNuA6dbaO1AEdOREL0UYdytXpImphTofs5KNQ32xjPfUDcE/OPCxhGnKVPGaDKFmw
         WriQarcZWKTCL+QSIeboxZ3iZeyLPot8i4959eLNK4Hp9AX+otcQEjTTPGOAq3NNHXCs
         oASTO4UQKhiVSOU0zqgwzBrKJbHTRXLIwyf7oeSFeBR3OENwo2LK2wNvrlHeSkfZv9O2
         UImw==
X-Forwarded-Encrypted: i=1; AJvYcCWFcZAxEr/3yIo8iePAYNeNtDredxVVuJZ72G5robtuA3LuLolc/Q9PlPS8v/18mphbyPxDueb1DRuX@vger.kernel.org
X-Gm-Message-State: AOJu0YyMgzx+xR+87beD7ji89/Hxi6iv8OS8WM+JlpDHzrdJBcWTO6dW
	kIr8DbL86q2YNriaGFQfNP/QMMyQAkAtiiXBB1ir+yzKF+Ie10FJVn7qbO37U7PkJFwENqPlb1b
	fiyFX6Xwul9nvW+IH0rmLkwVHrnDLiY+hSOa4XyXxbMFFc1XaQ8aJXG2FILAx8nJz
X-Gm-Gg: AY/fxX7GHBvqq8UxZko2iygEQ8HPUswIM3XYnBD+u2x4l65eA+wp8nLxSEYHjM7n8Qn
	SWa9DnkAX2/XdOq6ydbIVS7C2DIK5XzrcF6Hir7IpRBOYIR/IXbMUfzzXP17Z47LsiI6csioCQq
	JwhqsBcYORFPci7W3HoXi+wvIOR+z5V4uw8DgOw/SEpKyOxjCNiU4n8iyJ60we9dQ4UTyHUGzz7
	z3Rf+38FhRHcRjEgwJttqdb2fLw47OX3LfZeiycmO3jsH0e0Nu1XeXiXF8O7RCY0+P4VG3fVQFv
	YCc6OpYUkZqbaxtSNqos6SB7F0jiMc9hYcNPROgeI7ZwpWF5WtIimx/YsR+JfA8EJKCdLl06PG+
	i1yp6w29hzeFqp+Ms7cDfCA==
X-Received: by 2002:a05:622a:341:b0:4ee:bff:7fcb with SMTP id d75a77b69052e-4f1d04aba7bmr222878831cf.1.1765969706307;
        Wed, 17 Dec 2025 03:08:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRq0BGyibu/ddoyhTl1wr7+kskB2aUBm2eFhYLTZ08/nRBiWg41n28Vn0FN1dwtMLq1pY0og==
X-Received: by 2002:a05:622a:341:b0:4ee:bff:7fcb with SMTP id d75a77b69052e-4f1d04aba7bmr222878381cf.1.1765969705581;
        Wed, 17 Dec 2025 03:08:25 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f56b000sm2134927a12.26.2025.12.17.03.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 03:08:24 -0800 (PST)
Date: Wed, 17 Dec 2025 13:08:23 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sm8750-mtp: Enable DisplayPort
 over USB
Message-ID: <v4fhyvtvymsaydg2g2sx23mmb7mhvowm3hcjfz3injaigc5hn7@mzcacofjbnax>
References: <20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com>
 <20251216-sm8750-display-dts-v3-4-3889ace2ff0b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216-sm8750-display-dts-v3-4-3889ace2ff0b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OCBTYWx0ZWRfX4agUbVDsxFG2
 Pkk58/AogGYRAzz2Rn6JVOP80Up/qd6Xhc3i/YW0q4dzFae1kqlBo03uYvRCwmInPSHRmlVPrMT
 lmdtOvoXNacEcZHaUiWy+hHDOOKulqtTRPYLguKG+valB1dmtOXQ9QLZY5IMg9sxB+vIBEwkHNX
 26rluO+j1o2fnhZweACc+zXCTdP4s6f3tDKTjicCvCaUwAiu77+p+v/MKowtBqXYz6jegpYVoNF
 WOrmQJW0eyQut4DmsUR0BQoZVrR0OZl7J6IPz4PBEc/NxFbgmJ3Yjb8NQiruoalszar1V6g3Xtg
 8wnOEayefTJUFdeqAZAu/gawVS0OTwKrh2KChOjolxiTrKL/9jsnhyJm7f7QUPxSBNVGyLNG+UJ
 /+SmSU5TrqshP+rD2MlpOmJ6Mh3nUw==
X-Proofpoint-ORIG-GUID: QHKu4C_6gQ2ijac6F_BDTtLrzeBp3dNc
X-Proofpoint-GUID: QHKu4C_6gQ2ijac6F_BDTtLrzeBp3dNc
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=69428f2b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=xgWhb89BDjTtD9WMArQA:9 a=CjuIK1q_8ugA:10 a=3Q3lADbaBCgA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170088

On 25-12-16 17:47:34, Krzysztof Kozlowski wrote:
> Hook up DisplayPort parts over Type-C USB on MTP8750.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
 
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

