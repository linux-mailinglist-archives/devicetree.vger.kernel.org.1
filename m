Return-Path: <devicetree+bounces-225074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 023A7BCA33F
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 18:37:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3CEE19E51C6
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 16:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4FE220F3E;
	Thu,  9 Oct 2025 16:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S0q/obrw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4E31A9FA4
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 16:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760027826; cv=none; b=qe6yx17xOc5VF5saZ9zO9nK5hqypcfzvFxIHcnbLNehq0hGdBxhGpfn7wBYJHYbvUCOpRpd10D+fea3xYSS+WA3Id72lz8T5FCVl91p4Sjt6eJUhPdmPdNQLd8dDjzg614eySQ0fUOTz7/UCelIJMLe8RWS9u4fFuccn5m8fjsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760027826; c=relaxed/simple;
	bh=mQR4LmdMJ5AWH2DdIwZDV3SNM0G1QHD2IJtbbw11glg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TlVIH4frDmHbW61Bkc9AcnYozD5G0Fge9VWBrZP6x9+/x3PjHaxI5rkKAr1OviXYl13t6sX0bq/n+hbpEiYlQHsiT35CRPt+5kFotoCPcLv+nYNZHqcwrGsaRuoGu1NSIfxp9jCiytOP6ShrY/sbQDDxw7sF7UFdLVKKnfqLy2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S0q/obrw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EuB0x022311
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 16:37:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/Z8+8ah7UIIcQ95bFrXq1GGw
	0EurOZzHp3ra6wU06h0=; b=S0q/obrwySqTy9LHyEK1stX8/lrdENdq/lMW2Pm3
	ZVwaeauTThZWRCFkJ4e4WpUAe8QAZUtU4xnoNbpPLhb5y05BLdr+9zRyIy1q7kRK
	utKaOMeiOCtFo+eyCYftTBCQ4DSNdGG807Zq4xxa80C9RspH1HcgcOdAgjE8mEyQ
	UxSo+UxRbg5+0s/8uqojx1GXRJlYTPNr2kCogM7nAgxvkwqWXEc5Y6LYje2kRs04
	7FDDMqQNSnYSk7DechME5GJ0HGM+JQM9I6GTv8pXST4uelAvUFMb9PZSkTvAY0mg
	2CWe8KQ1d8oCwh1aiBvjYVYrhrnkEB6Dh+af8s7XSDbjBQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4skkv3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 16:37:02 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4df7cdf22cbso92590551cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:37:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760027822; x=1760632622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Z8+8ah7UIIcQ95bFrXq1GGw0EurOZzHp3ra6wU06h0=;
        b=gyhUGwGpvGczKBKeB0rSJciz+uGQoQMUu6O2xl+RhZZny7Ue2Lf5EXZPSI9R93ZSF9
         WkG08EqLB7jtQayZWUj7AzfrWb/UyDkEx2n16kDezb92C148Rg7p+5FWJfEVuA1vy7pm
         dUq8YBHrezbuyCIdLbJ4zpguEr1YI/USV9gm850iLwABvyNKTs+zvfJJv58LdMoO1+hR
         vtB3+qbl+YEKcFARh+H/PUylQuvPfH/SsIqmLpWX7zgbuoDD+m1ve+3v8nMkRLA0KoKz
         PRyFi8A/AUfnp/nqaYP9WhAm0WZlRIJvYeU4NiKlGFDd5GlcM7UfmRJ2wLAJEvGQ9I9v
         bgHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpK6h06pvEzZWDZhwN1R//UQMfoDqxL28NSTQ0H6fNr+lGi+OLQjkvmZKVFqef9mY7nFh2ZVguGkUQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzcewIbo5MSquqJlMeXyJN8HvkUxGDo3FhjzazPHbIS5peVD4Sh
	ilN6jYY0bgifW9uHZ1gQc39frucgya6H22ef+VceyMIgK6MdhaQVnv6M5iqRg+lDP1GopaUGZ3n
	VKROQfMBklyDV2OxTwvHCp7e1SYsp9oMwJISJs5ZHiVUo9AE5MgPu7sqKXCwo24Gl
X-Gm-Gg: ASbGncuOwJbZJ4riX47GiD7ubL6gkGwfCPFLP4Pj8zH/ToDRWAwRWjAUi0WYcnLArYh
	AN1F4atpr4T+byX+AVhs1kDOL6eDz6EaZ7oPsPKTz+AIu/DI3WVWZWM8UqTBiGobhUIKm5coRIU
	ksDVyPqXR3psdYY9qglmoSwj7kWwG9bi3m53EDEcBrjkTfwViERY9M7YSk+MPslGZPH6MJaZN3s
	OkoQHo/84winJA7xqP2cw2L0qloDOb7WaGsiiEeCb0pq13SGFYbVFF0dZNxRUwkUGKFxsj2hD5c
	TS2000x/MA8zDeKTnyQST7QQKBrFyNnk1j5P4EnA8BooSimNeqxGFvgjGfCRap0/1mxAYFqPTOj
	91YI40dtYLqADdqP/mTwqSLfMmfmfioCOW1de3CVkkukERpldG5VugfyjeA==
X-Received: by 2002:a05:622a:1188:b0:4b7:8a96:a623 with SMTP id d75a77b69052e-4e6de869e47mr157030241cf.19.1760027822109;
        Thu, 09 Oct 2025 09:37:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUNPLQ4id7eCj32iE5wNgvbzm87fPLzOkBCehs/USBPXUezx40RFlM9A3N33fdQkoKVSrimA==
X-Received: by 2002:a05:622a:1188:b0:4b7:8a96:a623 with SMTP id d75a77b69052e-4e6de869e47mr157029731cf.19.1760027821629;
        Thu, 09 Oct 2025 09:37:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac1f34asm1179006e87.43.2025.10.09.09.36.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:37:00 -0700 (PDT)
Date: Thu, 9 Oct 2025 19:36:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Luca Weiss <luca@lucaweiss.eu>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcm6490-shift-otter: Enable RGB
 LED
Message-ID: <z4gga2ewuhbu7djvlj5xbxyxbxuqzsfrr37im7ffrkah7lw7lc@v4masjarc5fi>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-5-5bb2f4a02cea@fairphone.com>
 <rnlkxpm6crulpvfleclkszio2fms7t3ulc3rpsdozteml2bak2@zvfuyc33ohez>
 <045401ef-3a39-4b65-9874-0a0086e72325@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <045401ef-3a39-4b65-9874-0a0086e72325@oss.qualcomm.com>
X-Proofpoint-GUID: QhNH41y0lVUkp6J6e19tJIVIp_ngoWL1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXzIBKeYX/LlhX
 0SsjZVD0e4tHaPvKitqeb4f3q5bM94WtiFfKzLUJ4WJQ3ySre6gy+c63Bckudf/eVK1Q+6On3YK
 lLwhSf8WFWaJwzOB8JRYYofDDUgfhYi6f6zsXxnucEqu1J4eFu5Oxyb157syO5buUNwRQwcYk40
 tMasZfkqTssikhs9vf6FZJffe4t/j+7kU2QBk/7q04NTUIHMFNngAQ9gwcl/Pl+YxbL/e+fJnD6
 3XNkz5xpxMMQG+tQcAcn4uhDOjHtSnUtPz2YK1qe9lMI5cyk9zuHVhgiN8bNE3XefanYxHYVPtT
 9Tp6SxExgvdVO+tPNgGBF/OPcx3CHmKMTqxB9XKaLutKtTKUj/u1Uu8nGpRaC3j5n1tlWUtJsb5
 U42bbWvyEhsTh7NI+o1/KvDe4U8pNg==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e7e4ae cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=kLI_U5V5mifkfa6Jic0A:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=y4cfut4LVr_MrANMpYTh:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: QhNH41y0lVUkp6J6e19tJIVIp_ngoWL1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 04:46:24PM +0200, Konrad Dybcio wrote:
> On 10/9/25 4:42 PM, Dmitry Baryshkov wrote:
> > On Thu, Oct 09, 2025 at 11:06:35AM +0200, Luca Weiss wrote:
> >> From: Luca Weiss <luca@lucaweiss.eu>
> >>
> >> Enable the RGB LED connected to the PM7350C (PM8350C).
> >>
> >> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> >> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> ---
> 
> (you sent an empty email, Dmitry)

Ouch


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

