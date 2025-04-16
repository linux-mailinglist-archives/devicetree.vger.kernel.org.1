Return-Path: <devicetree+bounces-167785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7A6A8B9C3
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 15:04:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 373A43BDBA2
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 13:04:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0531217A302;
	Wed, 16 Apr 2025 13:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cpCA5raT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD6F40849
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 13:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744808668; cv=none; b=m6pn2wvTW+14UOPuLuBJaph5JSthELGrtbvK2SiR8gXhoDDoYk01q+agePl0EXkCGTSnG8eKwpE4Z1IIfcS2MSEsiUGnfqEnJDiLH5hw74QFBaLxNj0SEyOcyJzFajoKUwNGcjliBHne934+0qfjjcRN+ogYPIT65ILCnQs+PUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744808668; c=relaxed/simple;
	bh=gxwEAxbi6z3ugW/ifjPosDOrGhdGdahjWiQHmtat2OY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o6M7UnYJqBKdCVTo88Hnn59RWbxfLFik4fyCHfOfDXG9PyZ9mbKxac2Kj7Ie+oH1GZCvkfzbr7oUcSgHOT2f50TZNnd6Dr/rD9vXF1iXG85XAWyrEtKCqKbc37IwJrgnpXlGWeXP9N7uP7tea4k2PdsdCOOxbdt0s5Wp6+gXyk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cpCA5raT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mcDp021072
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 13:04:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gxwEAxbi6z3ugW/ifjPosDOrGhdGdahjWiQHmtat2OY=; b=cpCA5raThVjaNWNN
	I7nPiZJWpo84FpJSW9ZJHYBzNj7zBE6jVBU+1VYc75HHxv5gPsVWVKiWFFl1hqmQ
	Hus/tO/mcfafguu/FwEX4hhLYQf/H5Z/4vc8OAjOOnWlAY1NweE2IYUZU9d7jctI
	5N0jhNqXsjDFBZQ4sTtdNszadeeZIefMHidmuk+zZ028rJ0ZnTMqWbB9cMSMs7OK
	O7M16VYNhks/GMUmxKzm2uqCWcBcJglJPKxXdJJNr3HHZFEfMhO0XhGGsVw8YCkk
	0APtmzeq0IdKSfhIiRT0PzP3US1fA5WpLXlnnqbeDtVuslOTSaiwjVxr2FFKHkTP
	6G9Fow==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpucdm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 13:04:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8feea216aso11228926d6.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 06:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744808663; x=1745413463;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gxwEAxbi6z3ugW/ifjPosDOrGhdGdahjWiQHmtat2OY=;
        b=mX+on+UPQfcroBK/+xlYCvlQUHwKBG0ZJgV6eM+WB5gR2ny3tvk9sUevJSj5wgZrlB
         1M6wMUMlJD4WsxTkvzMq//ptwlXei5fpDN3E6trOcucQVtPqPPjdsiet0kS5JD13JnYP
         arXHe7IW2i8Ga0oyOStveFUFYdAmldv47XSc939FiSGg6FAtUGUM1BLUPGwQ/p4qIIAR
         9XoIYXd8L83Yso7uIBDNmJNdGEVOa75NgA4d3Un+xN42+c8oW6XyjGaPS12bII0PFzv3
         iHYWEBhgw0i4iXpML3oSmjcasZdn7NOzzAHaboq+aQDmhmaVKdM/C1Y5ywHhXvJnu2lM
         9Tlg==
X-Forwarded-Encrypted: i=1; AJvYcCUE0GUsKnK9WMEWp8Wf5fr7eO9B2aH20O3TiYi+4TXdrQI3QFce3Qmze2kLBrhYpQDRjsZcvWLekA2X@vger.kernel.org
X-Gm-Message-State: AOJu0YwGx7EiUSzb8By8KDZcqEJUcD+hjepyeProjfMa30ng33aRGgx5
	HLe0ZDkeUT3HH5o4hrPy42QW951aoeMZpxhTdy97a3wkoLnwcXgX8ngPAbWez0ehIEtgaGTRC7w
	GJIfsQdYit0RHLsJYm3UXoDNeOUE2hxrWSkieyL3c6Hp+w6SJZ0yXl0GaQh2uxPKzVEppNnJyLG
	9+4lm98Q2FdelArGjBmix/Vf8JcQ4K1lTT2V8=
X-Gm-Gg: ASbGncuOnB8zhVQu+Dta7Ik1kRQsD8JHNZKNs2idoAtg1VrScRWLMhWbjl7njf4MvRM
	2IKnM2wTeEbtLe/QWzFa1F5NhE65O1D/pagRb3prc5oy9dsK/DNd1DKDOI5UDkztKZO9PSd0=
X-Received: by 2002:ad4:5d6f:0:b0:6ea:ee53:5751 with SMTP id 6a1803df08f44-6f2b3ead495mr22815026d6.21.1744808663057;
        Wed, 16 Apr 2025 06:04:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEOmRSGWyp41Z84OdRCbPebLRDoW4Vr0UmFozZz7UWb4JA0S5fXDYC69L5HZgj+zXf0udYFfGIyz48MyoL61E=
X-Received: by 2002:ad4:5d6f:0:b0:6ea:ee53:5751 with SMTP id
 6a1803df08f44-6f2b3ead495mr22814526d6.21.1744808662608; Wed, 16 Apr 2025
 06:04:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <yD7X4MYItg2wLMb5iPs1JXadfzhFB7wSFqo_hFbs6K72VbLmTtoOrnwcLJrP4WBvndDUd2eklJl3R4GRWLbl6Q==@protonmail.internalid>
 <20250416120908.206873-1-loic.poulain@oss.qualcomm.com> <3483e6d2-23f7-40e8-a56d-d7419b808290@linaro.org>
In-Reply-To: <3483e6d2-23f7-40e8-a56d-d7419b808290@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 15:04:10 +0200
X-Gm-Features: ATxdqUFEQ69jLQRWoPWFAE_LVRc-yet_jkfAopU4vczSRDGKdFUqslJ2vHVpvBU
Message-ID: <CAFEp6-3fs4ZAB0cW_rxbmoSmrKPVk0ueR=Fn9nDj29a8dV33yg@mail.gmail.com>
Subject: Re: [PATCH 1/6] media: qcom: camss: Add support for TFE (Spectra 340)
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: w6tbavspOb2oF8FZDX0q2Rr1ISO3BWdy
X-Proofpoint-GUID: w6tbavspOb2oF8FZDX0q2Rr1ISO3BWdy
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67ffaad8 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6670vO1W_d13aYf7LkEA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=990 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160107

On Wed, Apr 16, 2025 at 2:30=E2=80=AFPM Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 16/04/2025 13:09, Loic Poulain wrote:
> > Add support for TFE (Thin Front End) found in QCM2290.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Maybe I didn't receive but missing cover-letter for me.
>
> In v2 could you please give an example of how you have tested in your
> cover letter, if not already done so.

Yes will do! Thanks for the reactivity!

