Return-Path: <devicetree+bounces-245561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 755CBCB2623
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 09:21:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 914E33024376
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 08:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2778D2FC009;
	Wed, 10 Dec 2025 08:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JpmUXVBm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YyuCadyO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B844D27E076
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765354904; cv=none; b=jpYP3nxS4DefyajD0y+JmNkR/JGE6rbkVRLTk5z8chIf5WxPIBUFJRh6Q6WV2SVN0qTpeSu177sCx2fSOzQSJjkD0MJEKH/m3MfHUa0YjjIZTs9hJ6wE0cYoglD4qiMiR+tFtkFLLMfl5QbG51AGig0tohrlKfkTNEmMSK0LywI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765354904; c=relaxed/simple;
	bh=/iS+gwZsoSBBxVPwrlvR9WMPqlf4aU+4o3We8wYdjjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZPQCnhU3ZMqfOlueH3U7RZyNXR45OZpUCsAYwOawTAMU5KO1ZIO0pqSP16w0O4pXPtrM2fOL/j7bhCK41TAgE+FaYKxyeG0gEXPCEBnw8sT8NIukRsIs0yYbmXabxNE+ysBaetZpm45vKlqbqXiBBBHpXycOOePHph3t2k+PaS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JpmUXVBm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YyuCadyO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA6DqXU1598374
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HnPXid0omdHPGaut8KB5nAWM
	wKfDbeTFf33MoQUOo/U=; b=JpmUXVBm5kGIG3UUOa2wLGvW8fMO9OJGlDMfCXvc
	uEnKlIASTDsy1TgCWU2/ixfBVd3RrPmDyVhBxHTUqeOuWOo8j21AsWDW02YNz+zt
	WrKS5lnuJV97yRy/qVKGHu3IQAPidokI+0Ca4ZRf89VtNLGEG5Fy20w4eO3Ayo5h
	vUbyA/viG1rCqgZ4ssNEJjdtKwrLVSduGWqsSIP1QbNyke4bcyteTpWFg5kTFWzH
	Zm3EJBolnw2XYA3CjO7aUZvIIpxiP/lS71AxUXhKEc7pm0Da7ZaVSSvhZDmb3io5
	hMkrFuIlHkdSL1wGTaE6/tXQF3s8B+SA1C/NZ8h+6VHdJQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay1xp0kyt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 08:21:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee21a0d326so84515401cf.3
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765354901; x=1765959701; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HnPXid0omdHPGaut8KB5nAWMwKfDbeTFf33MoQUOo/U=;
        b=YyuCadyOhzItv7WF4BkJt4jpwYRP7Ft7zMMppg/Duem3lFZe6Il+wG2WB6Ph7qQXSJ
         w5v21N5bEotJkStdnnrxzxBZVXBFzBr+n+X9TyemSMjee95WyKe52n8Kxbz0Y0qYoBLa
         rPoruF1EBohaWYA0FgeIdjBtvfP7S6LF0VD917Wq6NPLtQ1+TPpPEXmDsC1k1JPAfylj
         fncKhQfFA6nni4BghSBSXkSBOB5aUAtEkxAhFoiZHlftMlTvJpG4Atn8gMSsPnkWUqP7
         f200wi/l/i1OU9ASbzINfE/oGmWGDA5wNpfBZ+1xPBKsBLkm5IuoKK+hb18z8XpxY/b5
         7QKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765354901; x=1765959701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HnPXid0omdHPGaut8KB5nAWMwKfDbeTFf33MoQUOo/U=;
        b=GfJq30cNMd2Rg9nIqoQMbZ0+4qid3Uyo7vsMU644ofozgOVemuNU9E+PCPrVPP4sTC
         1eC7obGMfajkLqoS3sCNWZYz7E7yqMZnRejEEhRn7W/mQu3a87FhklR0gIeXAPW/38ou
         AudAahollRDeJrxv5O+Xl8OTkTcwOwHvzVTq6+cI54HriutokeCL1bos3UDYGjLoh6XL
         Wp+M0LbEadSHFyQxNefjOLBSdSDH9VYcPgNmL9pIfuAfZniZ5qtUFIBolA/U6XxJQiVj
         PVa2xJwu/ULJxzHJMUecIwfZimr/FlNcBpSGiBXGWQevArSxzPqwB00zC67HKH/xV2OQ
         smBA==
X-Forwarded-Encrypted: i=1; AJvYcCVbWStLbTpt6YAnBFZxGdtc+syIxFxDQN0M6FZQ+xQ2apyJCPfkipxudLLC9lPdAQJnU07avB/lX/UF@vger.kernel.org
X-Gm-Message-State: AOJu0YzVgrZXcfVNUZg0RYDcnk3PSHRqErDkYmZB/0MVccLatpgMrOXz
	NKs5fWmajMwRKH32hAUQ7czuUPEkD9eFTwW0iCIYGqBDo6autgMWgx77+gmuBd1S4n9aNmi3S/a
	UNluAi/fA8Cc4enJ/0P3T0dcKbHVXCS3yUcDPDzKwVo+6rf9VMqlP2x8MFVEANjJsXxJ126/J
X-Gm-Gg: ASbGncvDQ7QxnF4MdWejtf4Hb9zcP/pi/y3Qx/3ELMNTcTdCkhlqaIITXZh9yQShaaN
	+6+qLx16Jz+RHWTt3g/1Sc/qHWspH8ny5JijbSrlsCkQy31WCRRibei8ubkAdI5cz5RFEUTzdmQ
	qG8H+JJiDXB0N5DjVRf88I5q7uBnf7+1ReqBlzGMRp2vUQb5dWJ3Y/rs1pjoJPwpJZ8TbWJyuL6
	8itmDet7v/J6iAgELIo3rpWmMflWTUwgRTuy9pZifHNRZPrwa8/+1WH/Yp/6A9t8IL70jeXoOTu
	ROl08PM98OosTORuoJ5lMHg2s1wVk/X79yaEZebti74DtjkGUHg932mdk0u4xsZuM3knJz4qixW
	oXdTcHiHv/8UWv8CZLmQRfzZDhxrI2hPPSNC5Pp1buqZImt1y/ldUtl+ZnGY8cNRCO0wZQ5PxlB
	IG6oJTTRMFM9bKAIh7gO3JLyI=
X-Received: by 2002:a05:622a:2444:b0:4ee:9b1:e2c with SMTP id d75a77b69052e-4f1b1a850d6mr21108721cf.33.1765354900587;
        Wed, 10 Dec 2025 00:21:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZERnPWe3Yc2HBRs6Tkey0IEG4u7fCpGxa0fWGHQbkO3ydYsnHYceLuRvt9f6FnX3itW8Hgw==
X-Received: by 2002:a05:622a:2444:b0:4ee:9b1:e2c with SMTP id d75a77b69052e-4f1b1a850d6mr21108321cf.33.1765354900148;
        Wed, 10 Dec 2025 00:21:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e54csm6202863e87.59.2025.12.10.00.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 00:21:39 -0800 (PST)
Date: Wed, 10 Dec 2025 10:21:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicinc.com, quic_amitsi@quicinc.com,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: lemans: add mdss1 display
 device nodes
Message-ID: <faau2h5z53frwfply57oh75zr5gcz4gf3za4vflbyht3ok4zgz@2ylcwcqcl4rt>
References: <20251125105622.1755651-1-quic_mkuntuma@quicinc.com>
 <20251125105622.1755651-3-quic_mkuntuma@quicinc.com>
 <32f013e7-ce2a-484b-8575-e98f2d23f59b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <32f013e7-ce2a-484b-8575-e98f2d23f59b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA3MSBTYWx0ZWRfX0gkrX+PD93GJ
 TJiIL8ZoTCQXJger2vVXk7opkZRkt+k9J4ppdexwn5xf3Xnf6BpHpxYhuXcBLjh5QLtdYFA8cTL
 7ryoNEzTk91KDYqJCJ7bE3P7syEoNz3w808LC8Bk4W3Nac8g//h4vink+LctLpjSnNIVh3YQL5R
 SIy6DEbf3hRNhCsWF1aYyYNBU7fs7vBS1DKOJK35AC64hafYujNEgopo0Ez/W+OxVJ4FZ8542ox
 03ugL6HIvAXH0h3T0W7F0EuxeaL6W3R4cHsUb3nr+tDj12RswwP1tNnjwmwXBYnC9nxbHE3C18N
 c/7hr3vP/PEGfdqcs6lJ7zFsNmUZYFmvjoMW4OmULf7TiHBjSS4iiEKoiMpayNP22hpArevKXUa
 l7RlgH5BO+ndSBwzeM379TwKfs2Jdw==
X-Proofpoint-ORIG-GUID: bh97qh7ZjrfCQaIE9GQjFTF3gurPXz94
X-Proofpoint-GUID: bh97qh7ZjrfCQaIE9GQjFTF3gurPXz94
X-Authority-Analysis: v=2.4 cv=A/Zh/qWG c=1 sm=1 tr=0 ts=69392d95 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=bsoMiNti4Xze2ZiuTnAA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100071

On Mon, Dec 01, 2025 at 02:35:44PM +0100, Konrad Dybcio wrote:
> On 11/25/25 11:56 AM, Mani Chandana Ballary Kuntumalla wrote:
> > Add devicetree changes to enable second Mobile Display Subsystem (mdss1),
> > Display Processing Unit(DPU), Display Port(DP) controllers and eDP PHYs
> > on the Qualcomm Lemans platform.
> > 
> > Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> > Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> > ---
> 
> [...]
> 
> > +			mdss1_dp1: displayport-controller@2215c000 {
> > +				compatible = "qcom,sa8775p-dp";
> > +
> > +				reg = <0x0 0x2215c000 0x0 0x104>,
> > +				      <0x0 0x2215c200 0x0 0x0c0>,
> > +				      <0x0 0x2215d000 0x0 0x770>,
> > +				      <0x0 0x2215e000 0x0 0x09c>,
> > +				      <0x0 0x2215f000 0x0 0x09c>,
> > +				      <0x0 0x22160000 0x0 0x09c>,
> > +				      <0x0 0x22161000 0x0 0x09c>,
> > +				      <0x0 0x22162000 0x0 0x23c>,
> > +				      <0x0 0x22163000 0x0 0x23c>;
> 
> The last two regions still happen not to exist

According to the memory map I observe, they do exist.

> https://lore.kernel.org/all/vc2hen5r7xdaj4nepkoy7pk2jmj4y4hgog5o2nfndrff4yti2m@g46svhsdyy7m/

-- 
With best wishes
Dmitry

