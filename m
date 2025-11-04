Return-Path: <devicetree+bounces-234563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 644D0C2EF26
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 03:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 261973BAC60
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 02:19:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EBC623EAAD;
	Tue,  4 Nov 2025 02:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MPZEagKp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DKUO0lc5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26F61DE4DC
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 02:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762222761; cv=none; b=JtL+03FB2Y+JhnXxtRpGwHfTrj1+m/DnbMB75b4AKXg7r4ymcuA0z3P75zzRChKRYd03bVkjEe7aaTR1tRCiypYEwExa0BO7Vo9TmDcBRbOHsNyFiAEKg81P9qXGt6G9/08FOGMAAAhD9nAB/l22nk8B0sC+78iiFuDfyQL8xbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762222761; c=relaxed/simple;
	bh=KyvDk7KBdsvEJPh/jWWyguSsjyrw/3gCRgDyquZ54I8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZOyh2qz9mJZl6Go3tLHWP3ckSf4bwGN2NF0PqwlAXDxh0HNl4bgJEKRJ+fmC2pqCNwtIdO1QbihD5Y9n9PGxCNI1oKfp9iAMHqIcApT4n6OrNgQqXf8ooJTF7rXbcUkcGp+uLsc7etiEMnfzt99YtvJqn5Ain6qb/rakcIhNv0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MPZEagKp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DKUO0lc5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3GgCu93683817
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 02:19:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VT+uJMyweB9zpA2zQcP02IUX
	/l5CbJ76U06mX6DtMmA=; b=MPZEagKpUp/d7rDAt57KB2eVri5hhzX1kdUmxCvk
	wkH1918n6wX6IJ8QrnEPNG+wja+jwrSStenYy0/y83jK/L3eR8R9UUwGkKdDbn6Z
	2pmM73eFS4Gcn8EH+4BtZXKmmqIloaFfJ5riOEoGbBHoDmu5wbRuQZc8AI3DdChA
	26U0kR6Rv9Tg5dyjsx1h3ovdNyfzbJYs5DpZ2etzMoJRdpRLhp6PTWD5WREK9wKP
	qhowIOsXr/ndNZfmsxHpzFEGWy1Hdnk92CsTA4FG3U3hXTIdnPYgvnU60DcVCT+T
	VxWOn0uRZ2nmwN64qBZgVWW5flnBqmjMrDXHSn3uOGrmBg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6xjqsrk0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:19:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8916e8d4aso160835431cf.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762222758; x=1762827558; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VT+uJMyweB9zpA2zQcP02IUX/l5CbJ76U06mX6DtMmA=;
        b=DKUO0lc5lENhS/A1908BCv44rl0qgd2/L83+AWIuSkN4PRM9APmpzBk5w76LiYJCOt
         K8WGFJ+ORoBB1Kp5CWcoyyuWBIoke8313/yS2gGr49nmh9Z9ny4zx/e6RU5p0T7aGnha
         cTZQnCxxdEolZTyFpDJ7WFXHgnkWtTeUcqBmNrvagFmIRysO4VcF8Nv0sBlxoZEut8XY
         eJCV98zysMn5ZahcUTbmYeu3Eo6RMQEOI+YyxQhf9wUh3EXXhpnHMH1G24zmrhXbe8Eu
         JcGm4601P9Mg3mIYlt23oAVMBEBrtOA9xBccVL/ap5svj5fXqiyuC7oygi2PCBNDqCnN
         KAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762222758; x=1762827558;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VT+uJMyweB9zpA2zQcP02IUX/l5CbJ76U06mX6DtMmA=;
        b=Fu/WQP2Of3AAUVEXfYJhF++wB2jUnrMVE3h7EpzljfevUG7WnB5ePowWvlNh5jqjkt
         EoKgsqpT6DS03o3WBNL2hRLiPgnx/DZwUKxYiFRedqtrQ/3WAMbYnvRXDvd8ib/E/vY1
         +ZIX/HtjW4gNRs5sj4Lc3byT5Bgil5UIDZQ1O279NZecjtaW2ml77jtQILNO9Q8uRH9W
         7XkVSoKnQGTywj4XNEaZZIIoBxU7DaOITGuGxGIOfNgc+xwtRYmJs4T8VHw4LHS3eZcY
         i7/i1PFIc8xo0O/k5spsEBccC4iOtxp0X3txHqmuAOX+UG0iKrFkCjM6C+UoHebBaOBK
         JO0A==
X-Forwarded-Encrypted: i=1; AJvYcCVCoXCyKc01SLQ1JJOfzwkjoI9oZQnN3fa+/rKwgzjhgqkaxtnzANo0Z0qELsqOvsLX33rgzYNZGCB3@vger.kernel.org
X-Gm-Message-State: AOJu0YxdA0Q2k8UbJF6r1kT/14Ij5CBw+/G18P82FjSrXwzqTaEpgaBx
	mB4MRvWwl0+3A50pJJ9aWWVZckUpJagH1pKh4VyKpX1yHy7wJclOwX246mFhBGJ5HL7/Jsnza0p
	9mBb+5zva473T5a3SUq7Jdfz2wSzH827crFbF4j9qBdXZz54HvOWaozsKl1c+Sida
X-Gm-Gg: ASbGncvC0T+FgQA4t8EhEdNz4nl5XDtQ7NArWPdS4hZOrLJwLdGbm5t1QjRqJjAw+nu
	zCjO6jwpvMl8EfAs3S4taI5GQGTMePBA5n4FCde+COnojzJru0KuQFGVHIUoUrWaBtLCOkO0dgf
	nCw3Fs+Yi6ip4r2nAjizA6a2TmiBIJLGkg8mbJCq6qiHzKYlygLrgoijZkhx9gG0gmTquMHKYRb
	i6A3ftgmxdr/zLOLJGAVVljbAnXlmr/zTZy81fTz2/tGXYklC7yA6lE19/k5Q371ppCGn6VVEX2
	Jsym9xLMw9EKWxK/CgDIjyiJbjseJx2hnnStackygTmagkoLlWFcaAxKH6j5C+xbHFVh3ZPhS1a
	NOnIXWq4ZUv4KhrHewPuLzafxeolYOtoTDb6A+pyulQ5kSYoFfaEaLL3ORjI2zlkZzT/540SiZL
	ws8a1t/72L2Qfv
X-Received: by 2002:a05:622a:2591:b0:4ec:f4be:6b12 with SMTP id d75a77b69052e-4ed31073e8cmr191051571cf.72.1762222757943;
        Mon, 03 Nov 2025 18:19:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0ryUoF8tqlqAR99jW1Vl1MLNpRRKFPflxwGP3hN75SmMfFz0v4Z+G11/UAlfIAEcBs3/06g==
X-Received: by 2002:a05:622a:2591:b0:4ec:f4be:6b12 with SMTP id d75a77b69052e-4ed31073e8cmr191051331cf.72.1762222757399;
        Mon, 03 Nov 2025 18:19:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59434439851sm347104e87.61.2025.11.03.18.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 18:19:16 -0800 (PST)
Date: Tue, 4 Nov 2025 04:19:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        sre@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: firmware: qcom,scm: Document reboot mode
Message-ID: <v5dbwbgic5cogxsf3lkmdwmlkpnqvo2niy3s7qu6ow3btpo7se@2altcz3nhbo2>
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
 <20251103182006.1158383-4-loic.poulain@oss.qualcomm.com>
 <aqoxdaq72prkeqwxmmohlmbpx7icuc32sej7did6vt6rzrgfib@bvmt7ppkvloc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aqoxdaq72prkeqwxmmohlmbpx7icuc32sej7did6vt6rzrgfib@bvmt7ppkvloc>
X-Proofpoint-GUID: omlt5CGsd82cQ6Lkuipds0ofKDCAfuT_
X-Proofpoint-ORIG-GUID: omlt5CGsd82cQ6Lkuipds0ofKDCAfuT_
X-Authority-Analysis: v=2.4 cv=criWUl4i c=1 sm=1 tr=0 ts=690962a6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=0l2IAsR_NwdsoEKv6PkA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAxNyBTYWx0ZWRfXwkI2WGLbzFCJ
 tmTIieCaTSQ4Tm3x2PYGDFrLFmWn5zSxBuLx/hIPYyrbKuauwMDedAGps6rJmhT+uxSO0EqMOh8
 v1y7Ff3xd7f6iav4F9FDrGZ33+07hDiQ9oqVzdApAVsE+PzFk9mQ/hNfGI/Khf4TixLzRKsTzPb
 4nxaUeE2g3MAbpSXXRK2SOv18i1TCl3jqJe7aBVXAz5MD4fnUwBAhKT1RiSVNJppQDMkKwqot9v
 Gxw5vZfXS0nsfzqW3rWxJ3ExJrY4MXHgUm6qQgU5vgjOY0ObQ3ILsJ3LbdiTFnq2FCL2rmVlbBd
 UqdhlarLOWIsGOV9HwuGsTUCIgyO4jo1T2oZkwsbGVjsqGHZEZJwhq0/RGdIGVGDT9RlawK02ah
 Axk4pCadguHWkxOh0V5w4xkxfPZMSw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040017

On Mon, Nov 03, 2025 at 08:16:30PM -0600, Bjorn Andersson wrote:
> On Mon, Nov 03, 2025 at 07:20:04PM +0100, Loic Poulain wrote:
> > SCM can be used to support reboot mode such as Emergency Recovery Mode.
> 
> "such as"? Do we have any other useful bits in here?
> 
> > 
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > index b913192219e4..c8bb7dacd900 100644
> > --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> > @@ -121,6 +121,10 @@ properties:
> >            - description: offset of the download mode control register
> >      description: TCSR hardware block
> >  
> > +patternProperties:
> > +  "^mode-.*$":
> 
> I'd only ever expect mode-edl = <1>. Do we have additional modes that
> warrant the generic nature of this?

fastboot / bootloader?

> 
> Regards,
> Bjorn
> 
> > +    maxItems: 1
> > +
> >  allOf:
> >    # Clocks
> >    - if:
> > -- 
> > 2.34.1
> > 

-- 
With best wishes
Dmitry

