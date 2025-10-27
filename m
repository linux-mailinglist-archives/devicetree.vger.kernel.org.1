Return-Path: <devicetree+bounces-231547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F08BC0E14F
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 702864FA136
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9E51DF247;
	Mon, 27 Oct 2025 13:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YpQxaR9N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2A11F4621
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571851; cv=none; b=hGp3mCKh2lqSM102jrpEZdd8BfJQiz/xdaZtq6hDAEU7iKck9XrLDaG2MPcW/eFSZAymh/GmK9hIUP2cMGBSGJNnKQ0v8ioXt4lgJr7T1FwO2NQXwFd6RurFe/h5IlXL9HSEdDRWF6v2wnn7KYnDCw0OF3+lCREuJKhlGqfrxAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571851; c=relaxed/simple;
	bh=0+NW3qoSqIVkjd8t21tsQbDlCJTokrAnzATLDXILBz4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ljc4WOIG1UCT7+NxIBewrmymPGka1JMRPRjdUMpV3bgiCZTjtPVjNloeqrnHCUY2sVFtTIbsg7cSaiQtXuftACBQLGM8fNp1B0AEz8sc7LvtGqBUCHaAiSxj1IqBEKUsbmtOBYfyTyEvX6L3m6MdVCkTFNPN3Nq2HMKoDfE5suw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YpQxaR9N; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RCKwOp2750374
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VuMvAMd2Yn5uPAiVWdHf+qc3
	ZLlZWtjBdo/nxvtzJAA=; b=YpQxaR9NbkuVebTOxqLZOKApJ8xkEoYp/PY3AysS
	RJuRsULcLLPC70w1zr29miA5OJze9zBxX2T53Ayx/QErjy2BFl9qK5jJmgOdRI00
	rxUbNn4VGB50UexWm3YXEE7JqQJUwlD+iK32YOlh3xexsqpJQTpQ8SJdACw/SlNU
	qFOtCSKe3p0wf6T68HNljU86vrqd0204RCMg+5EDVm/QmkHv7s83BPxGwB1UU+ek
	pmu1zlIKtXiR/icB+rltZMLYZd39pQ3kDXQe6hkpvNRQhkhfrLjX2pxBFHLzp6lC
	6kwAq72L6rmLSENFaVfgz2Jxb2+cajhz36Mi/BQzV0eT7g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28nsr6bq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:49 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4eb9e480c15so46460971cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:30:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571849; x=1762176649;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VuMvAMd2Yn5uPAiVWdHf+qc3ZLlZWtjBdo/nxvtzJAA=;
        b=Es5vslQv5LKJ+tG+SALFQg3ggyAzhKoH923rcIuQHWwWN7x0kwv5g72jUY76JAm8fZ
         eLPKTapDzKsVLO9Rp+OJALuTCO4sXPHxNxYn/mlnO5DCak8h4lGDMtfCUhHBVOz+mPpq
         hJUgi16aK1/ER6jSCx9Yb3dl3TGTYeSVkn+FGiiS/H85lLPUTb32h+AYS+mpAQ+kNDoE
         ZhPl1v8YD4pbL9dCF23fdrsmsfadhQf3QUTms9KPUZeW3LS3j4ukkpQsuJx/UcZCW3Y+
         Casz7DYVNzh9XiJqyXl/oKrUW0+urK29Ji6XdyCrfLDqqQv4NxXDXqASFXoin0uwszd7
         kZIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsReI4jWszVpskNK9YmjbLTP00rZQRPvPYxWJ2LEgnFjqAHxVwd/lzdcD1CiM7cWVNLKnsvlWPFHAE@vger.kernel.org
X-Gm-Message-State: AOJu0YyoLLD8bUxS8FFUZh+ezUgTiThTahxcqOmLwp9Wo8x9lrNOn1n6
	BLRGofElrnRonDnwt1QYGUUCU4noH0ovB+A8rGQZnrXaf7qIgXTLD0lLLJleDBXaVjXN9bIXh/6
	Av2R1VOU/aiqm3fN0V2V8LTZvNCJyFVtzvWFHUMaj0FOwaO6HmneUy8+f1+1EqACh
X-Gm-Gg: ASbGncvsqHvS1SLY5/R/reZIDDnGMjEp3Ln1wwGn/hez/7AdDUvNLjaT5iGSRwuV8TM
	dl2PZzjNuzlIcgzH7jtjBM83UuwEutNs8OR74hoY5D66z+fNg1JQt/d8eFZiBI216GFEEmXrgyu
	IM7YOcMkxKIyn9euoJMqMV9nrRZ1AOM1MkMcODSvcfVVpcAMsbxLl8nFYedYE1vp8B5ccnnBQnk
	5C9x74kliQYTprYiGcmM5ivEaZvsmbh3w6ZxNA9zn35w8zHAXPG9zak3oJIctUAZLo8spEMvJSB
	prHCxiDiEGCMiv0mOg1IXQQt/Xb2oqfGDjiYFzq4NDML37u2G09i4CTvig86jjsSR+a5Iw2JWZ8
	Pg5cCmqumKym5ulpuEf3+q+fdLd3LzY7MmZQZbqPC16QEwZSF4Ie8c+2bs+0wneAIogZsfKK0aF
	9PbYbs0CZG9mEi
X-Received: by 2002:a05:622a:4c8:b0:4e8:b88a:c6d7 with SMTP id d75a77b69052e-4e8b88aca6dmr348436081cf.17.1761571847860;
        Mon, 27 Oct 2025 06:30:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxmrtPppf/+owHCkx0AjMgN9OBqs2zLqs2+SSWeaytTVGUaHm8qCALLSko1kZT3wz56Y32Sg==
X-Received: by 2002:a05:622a:4c8:b0:4e8:b88a:c6d7 with SMTP id d75a77b69052e-4e8b88aca6dmr348433731cf.17.1761571845947;
        Mon, 27 Oct 2025 06:30:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f7444bsm2344459e87.85.2025.10.27.06.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:30:45 -0700 (PDT)
Date: Mon, 27 Oct 2025 15:30:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjiey <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 10/12] dt-bindings: display/msm: dsi-phy-7nm: Add
 Kaanapali DSi PHY
Message-ID: <2pyurzgalnjwsxqw7qhfguebps45ne6iua7gvioagz554ra6ru@nhe4tnmabqp2>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-5-yuanjie.yang@oss.qualcomm.com>
 <em666johhzrluo5z4t2nu5jo4yuowegaemlrursvczx2zze5o5@uakt5j22ygwm>
 <aPsYVUjyPru5FwPe@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPsYVUjyPru5FwPe@yuanjiey.ap.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNSBTYWx0ZWRfX6lKKUuSyOZse
 b4MSFC5vvpNazrcXX2nDLgxYGY097Aigim6M6RHi+NFnjMnpRf9fBjqHMS4Vbu6ATIlcIqy5EwV
 qfVzSZakTpcqJSv1wh6EipwhMZU9JOX+8jnVfBEjCZtXsxr8SPA7DGdQ02eMwlU6D81znQlllxq
 eMv8GgemfH6glYB8W8JiScROt+Q8pN2UzRQWyFy5/n6RADuWVhM8E7RgRaRQUr5P4gzz6cEfd2k
 IssXmFNbxN9vCq8TF9tlFZQboyVwyg7779C1RS3/7ObJrOvybxWwMtggh9rF3r+TWTNS52gARcU
 Bp0B+B/8G7BP8r97zktuDweXdN21Xfd9Qkm1eINvLLEBdMiDe0JY4eo5bElxElKRxUJImfzlUK1
 Y99cRSQLj77an5/L4gDBcw0IVrlsKw==
X-Authority-Analysis: v=2.4 cv=RIW+3oi+ c=1 sm=1 tr=0 ts=68ff7409 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=dXhcXtSbZMlcZ2ZPzDcA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: jrguM3hcf9LBUrk7M0id-lF0gDF8zNdZ
X-Proofpoint-GUID: jrguM3hcf9LBUrk7M0id-lF0gDF8zNdZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270125

On Fri, Oct 24, 2025 at 02:10:29PM +0800, yuanjiey wrote:
> On Thu, Oct 23, 2025 at 03:16:31PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Oct 23, 2025 at 04:06:07PM +0800, yuanjie yang wrote:
> > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > In the subject: DSI, not DSi
> OK will note.
> 
>  
> > > 
> > > Add DSI PHY for Kaanapali.
> > 
> > Why?
> 
> DSI phy for Kaanapali have no significant diiference with previous version(SM8750).
> But some register change make it imcompatible with previous version(SM8750).

It's either "no significant difference" or "register change make it
incompatible". You can't say both.

> 
> I will give this reason in my next patch.
> 
> Thanks
> Yuanjie.
> 

-- 
With best wishes
Dmitry

