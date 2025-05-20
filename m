Return-Path: <devicetree+bounces-178978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B78BCABE420
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:53:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C03D11BC2325
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 19:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC41284691;
	Tue, 20 May 2025 19:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jDIzpdRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B472836AB
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747770804; cv=none; b=GbJf6D4xHImCM39I+y04hi1j5bMjqVMgcrXjJeGBQwD+ZskMajg7yHoi6ngLX0qh5rK9F0k9SjoeiwRTm/jpmgFPNXlbpFGRA1HYvHUPSvQuM2CHSvOvPO2qd3vljGjFZlFOkf2HtyWIq4krIzvgHVlWmu57+8UkRWAQKxKhciE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747770804; c=relaxed/simple;
	bh=cbcMcmlbjtAT8b4+gF8YGTWbSKSzZ8NVvIsgP/AKuwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F42nk8wFwjAW31r9S9I3FQkhPlA+cFrCGKX+u6P156XEWd5yoeZN/+P4NSq7sHS5wgJWFtthzTomTgefPZS0tTdlaIJ792f1xniYVXOLyV1XxKOrcdmgkv7BKo/yYhcM6haIIlBLdBwSW+UI5ABOeQtc6FXszU5wNqivJOm5S5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jDIzpdRS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGiP29019199
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:53:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=i5aonaPIAkvbsT0V7cfk3ibR
	wHajdLgS0bN0SFcHVGg=; b=jDIzpdRSXFh9gEp4fLweqoJydK1dXbY7MKzVrcOz
	a8uejzaGsLs4NZl2tTeX3svcKjGyZaC3JultHrSKGW4kJi35UtcnQ0V4i3Vix8Uv
	TfOnGrn2qBy0yA64ykWm00zJskXGcWjkv/n6Afp643JA6iX+/T2aVdfp4fR7oFbe
	jCSGAdkZ+G7j1aDnGqdWCpjmCNUVaXdEScKtnYzNQs1v5BnHdMr0XZMkHCi+ToVN
	y87xKL9sZbuUGvBm49/ntuK31wJqCB5ffV0LiJ2QOYhGQbq1OroGBf6+SPAFIfP0
	jr8+se2ZnTrgWN6rSWLPojZmssZY7B7zgoDPHyEHSmhnPg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwh58ga2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 19:53:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8b2f0ab27so70898006d6.0
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747770801; x=1748375601;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i5aonaPIAkvbsT0V7cfk3ibRwHajdLgS0bN0SFcHVGg=;
        b=YEbBFqVeCda/99cnFqgjJFj70m1NrBKshbEJfE4QoAfxneBFGWrqJ3jTE4odYYtINv
         855zFS6qdbQGkN+4PBPaSqx9RxcDRkyMA4o4dx22Df2yzUBnDtVoUodP6/oPN9eSSkDh
         1xgsF7g/wZ+5o/nOsD3K8mAxj0tg61jFmxVJrJRvBss25f6MCMGRkMcfvAQe7FQcj2Q0
         Augm4JQoCJaFDV+vDLMp4whFlgVJvMv6XtNG2tdUlRpQAu1xxIep8nL9x1sbZaLUtriX
         TZfPWPuOB2kyyl+uqnI3iDPEjHeZHg07j/AhvWhhyjzDeymNA+BPLaQ8vcPUtGny7EF4
         ZLNg==
X-Forwarded-Encrypted: i=1; AJvYcCVb2mXTsXlOMJfbuJVH0QQIxtxcDZSOPXY4/NkO0TeF84RQ26XDQPMZyp/zv+J4lJai4DknJyUqAWAd@vger.kernel.org
X-Gm-Message-State: AOJu0YwOkAZnaTlh1AoVnkGbd2WcIzyie+C7mD17ilP1yYC6mdLFWMVT
	ZC8PETNsNIHDCJy64Tfpmg65EQIJ24V1UOA/Pd9544PfsdGmP1ZSsyJCik5DMaPXxyfZALX/j33
	z0scSCH2HCu1q6Wx6kKaMa2xO9tQvLzbSgg9gAUuXVplDUc0sqAqr6FQYwNqTX+Vx
X-Gm-Gg: ASbGnct6E4j2+7j3Iz2dL03a3JF5fyqF2BLPqCT+YGuCM29AI8KM0BU3YvxZk+3sQdQ
	qWszitjxnYxcJDJ39HX3Mcpr0cqIZlEXu+5+3l7WhPAWotgiTeS/j6FtKdUbNjfbNakkIpTI9nd
	pp0ayOIegOl/IrUqO3tN227XK95N76gYQxDKh9DSsmVNqCdlr4DNSvmga+TzVxgXsLUrDczZ7JY
	sLKvFqsimwY8TJgA/cOFRqcdCMZgbNex8LE2a1R8G6sx3LXRff92foihETp1gO9YhBZLCnk3ieO
	CR45b0OnYUb4aCZKyjYaqfhD8zt6hagJJmAWyrhZFCePsYF2YOxUFyE2+pUSQXhgxLXXY717LvI
	=
X-Received: by 2002:a05:6214:202e:b0:6f2:a537:f47e with SMTP id 6a1803df08f44-6f8b0881b36mr298714796d6.42.1747770801070;
        Tue, 20 May 2025 12:53:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6seWDXes4rNoHVANTe5ljrtRMlWKBBOEr44H3bHaU05H3MV8xBXWEhAY/qN3HOFoCI+hEmA==
X-Received: by 2002:a05:6214:202e:b0:6f2:a537:f47e with SMTP id 6a1803df08f44-6f8b0881b36mr298714416d6.42.1747770800694;
        Tue, 20 May 2025 12:53:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e703f52csm2477061e87.234.2025.05.20.12.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 12:53:19 -0700 (PDT)
Date: Tue, 20 May 2025 22:53:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: vincent.knecht@mailoo.org, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?QW5kcsOp?= Apitzsch <git@apitzsch.eu>,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
Message-ID: <5acpcyzscv47uyyjhtpfi3x7oh47wafo4n6kd5iu6zs7rkpzro@nwkupv5mpjpi>
References: <20250520-camss-8x39-vbif-v1-0-a12cd6006af9@mailoo.org>
 <20250520-camss-8x39-vbif-v1-4-a12cd6006af9@mailoo.org>
 <30dd203f-d7e7-420a-b310-2c36869f3aa8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30dd203f-d7e7-420a-b310-2c36869f3aa8@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2MCBTYWx0ZWRfX7T+GBOVQExEV
 9xBQ52HnwA71m9B3FyJLQXckkuylgrark3VbjgozU5yfiJHYb5o64PMKQahpbH63Y46wSee9lDZ
 hhsYaaRqMtTFlb2A1PDEvIJgiciGdFb/fIpwBu22P2B0nARhFhe+mJzpR6w4IdR+8IW/cNG5c3z
 r3RW65DMrq/Re/OMQfD79LGe/v52bsKNKPqgM2ZtzVGJHLAu2u6tqthnPgg3Rci/MNJVWuhfpQX
 t5xvrOvU1iZax4PqfhP4TvdnypGSCLx3IA7eLvsWVL8UB/SVXn0sD+FpsIRYvljl/4dbzveQ9Dd
 APB1/vHh4IYYeiOcAicJ9uwelPdPDNjayd9l8hwu0uQUu7kWKfvBE+S6TXFBl5AZR/lk6RrMGzf
 SdEbgs2NGXWqQVq3v//rQyjT3vplO+OQo5nIR88cegGrKWF4jtnPe34eYSAOtWv7/5Z98uGZ
X-Authority-Analysis: v=2.4 cv=XeWJzJ55 c=1 sm=1 tr=0 ts=682cddb2 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=TqukyxIwAAAA:8 a=a9wmfB65m3qGRrS3yC4A:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=e_wvXvRcY2B3oMitRgDS:22
X-Proofpoint-GUID: 2Sel_l3Vs_Art8WbhkBmvhHmq_e5Z8V3
X-Proofpoint-ORIG-GUID: 2Sel_l3Vs_Art8WbhkBmvhHmq_e5Z8V3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 mlxlogscore=740 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200160

On Tue, May 20, 2025 at 08:23:02PM +0100, Bryan O'Donoghue wrote:
> On 20/05/2025 19:39, Vincent Knecht via B4 Relay wrote:
> > From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> > +			compatible = "qcom,msm8939-camss";
> > +			reg = <0x01b0ac00 0x200>,
> <0x01b0ac00 0x0 0x200 0x0>

No.

                        #address-cells = <1>;
                        #size-cells = <1>;


-- 
With best wishes
Dmitry

