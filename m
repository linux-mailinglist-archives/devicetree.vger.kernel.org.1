Return-Path: <devicetree+bounces-231532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 65160C0E033
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D3BB24FA0A6
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6635C286409;
	Mon, 27 Oct 2025 13:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nV6DbO+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE81629346F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571301; cv=none; b=gkPzc0I2BlQi0oDFoyA8gOqR6jTJKK7V2TIbUdoxJyMAJa3c/I2pHMPesI/EoEQM7dgEjEkonH8lO2+qvbJ2Fs1G9pmSMdBqyOFW8OQpQLbGhm45NzEAGkQlEi329qyZzOZUVd41/1OTqVuJAgApzDdCPp2h9jgR9tsI3Xu5VMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571301; c=relaxed/simple;
	bh=Uva773iEdDpkBIyZYVwtiOdB8QTio/mSXTL2xqDIo3M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m5z1Tfq3roAlBDwtmzA14GGvZIiYLB5T6uos48VtH4eclk7II01esW7eBgKovttN8TS2rCx1gb8KwZIYxp/IPFxvNtjjVset04pibV86dqknwmIPXcoWhJyoXOQBJmYP/YKGwlgO5IbI8GprQs6uROqQEuaLb+xQmSjhwQTa38c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nV6DbO+3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8qSwe1166347
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rIQxrF/LR8wD4VYuDzgo4pyg
	T4/SDSgx44EBgWbrJxA=; b=nV6DbO+3V3TP7iJifABgm+p0yKf+ze7sCSnR8z4W
	+BN6EBSgDdRRkclO2PDXuygXbH34Dx4lSu/beNQirSR6yoZEvRyAsqYcaqq0PiYJ
	6KRhqhsLBQZ8h+GRrkVCFqaAWkbBc7CMiV4dPrW5U490eESJjA0/qwb2TsMGivG6
	oQxqneDieGlsqKFKokuWXfaAEaRNV1glaMSgYMV6SQJp1r+N+IBZ+VSZKXReNZNp
	rW//c0Hs7YSQz7bClrlydJx8F9Yhglv5+zMQrdHE+QZZ2uyZorQGBQs5a6zT15Lx
	MhfdyTCU3WC4zdn7UWwMjnm6RLEbYFJgwfpSWmFEgWog6A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nkamps1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:21:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eba930d6ecso71259041cf.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571298; x=1762176098;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rIQxrF/LR8wD4VYuDzgo4pygT4/SDSgx44EBgWbrJxA=;
        b=Zt1Jzc28JSp8RSnjPKgXDO6UvfZTAz4pXJ9aYAiFKWAcRAwPBuX/mrVMJ5a4jUKoq0
         giPNypME6KzWty/zm04qb4PrnjELHSAO2DULfHz7eLgSm8ltyxr5IukDJ2mtu/OwQO4V
         +cZDl0Q6eZ+MemeRh+1gc945ksC68mlrtq8ZMBBi1KFypZmsRrOkFP14wShHYnCSUOKb
         /YcQAzngpOo7iLYO4o2SzDy3OdsppeLBe1Mvh6T2Iw5q+C1y7PrS4A2K/p7wOmpmy6C+
         ZcIztj0GifLQKm8nBWqnPP1XDq4coArv9BosXSxRqCDRbixk4nlPjwOjMoYI9DIBXeuF
         7YwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCaSetJSbmbj2qBjB1TIt1XEClsRRJeOrU7YQbqZhhUt8ekAHvvXvoBk5JZC6a1O9sfFOoYnuln66Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyPxisSaB1NPM7FrZ88cpwQ8xh+aro3uDWwrXF6L75N29ulgoV6
	aDUULNuK096dSmIMhmU/1cLfsNpPwuq1CaQb0W3sQTnz5Ub6ZYG+IudJJdBFWiKtOdwN2QgfApw
	PtpkJ10roYmJ6bbk3HSmaPmSRH311ZIMlbnDzvYvK7GDy7InA70cUGz0yn2TsxbEh
X-Gm-Gg: ASbGncvANxJs4UDnuqF4X/ZjyjHwyPzGzcQ+SyjIgT6yG2ipCHtthkPChCHBHlbDZNT
	vvdgD7CL9Vo0SrXlg7gpRqgL7P8ITz2YtZIuvhc/do/Zt0A+WrZSsuoQMt5itDX4AIZbfL8Rleg
	YwWTWYBZWb7a3DbYsDdQEphLsKB45zXR8vF453XgDU7ypF2G9gVd25IjQFHea7/FCS6JCgbJMHs
	VGTyGbN2PG1qJb9osnmHDy1o/J25s6VugG23Mu4bD/dCt9wYW7izsY2rMaRhkWu/CFvxZQ/u9v9
	Cny1+UB5mawJFXfphlFd9AnlpgGIiEMdNC/BDtadRDLFuALu4MR7mNye5IlEAymOBhdEsS7t3Qr
	kjescyPv9Vz91xW/QyDHCd2V+PsnxMFyKaXXJv1HhCPqsvGOm3k1wBZWjlfa50s+RdIHw357Cdc
	rdEpFXAoB+tUZP
X-Received: by 2002:a05:622a:4c12:b0:4ec:f035:d60 with SMTP id d75a77b69052e-4ecf0351008mr67146051cf.5.1761571298249;
        Mon, 27 Oct 2025 06:21:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHsY3iHzVCLpUn7wkz6y9duilAb8cRKkxlio5523RK3buC8sPqKlAaBcxT2E6xXHVj0E4Anw==
X-Received: by 2002:a05:622a:4c12:b0:4ec:f035:d60 with SMTP id d75a77b69052e-4ecf0351008mr67143811cf.5.1761571296230;
        Mon, 27 Oct 2025 06:21:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f41bf3sm2291171e87.20.2025.10.27.06.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:21:35 -0700 (PDT)
Date: Mon, 27 Oct 2025 15:21:33 +0200
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
Subject: Re: [PATCH 03/12] drm/msm/dpu: Compatible with Kaanapali interrupt
 register
Message-ID: <st53uwtdow2rl6bvmfitro2dmodxtzfnhyzon4xeeetkkwekxh@ewlzkelq25wm>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-4-yuanjie.yang@oss.qualcomm.com>
 <nfekr4vi34ftxzyyf5xv4tsb5cr3tokiyfkerypqjf26dos3uq@42wcn6ji7nnb>
 <aPrre+WXogSZIE7L@yuanjiey.ap.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPrre+WXogSZIE7L@yuanjiey.ap.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AYW83nXG c=1 sm=1 tr=0 ts=68ff71e2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=uwcRXY6SZ9cHZavlex4A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: L7KWUFRfMS9cnwEmxJsaJEzl19PfHzjN
X-Proofpoint-GUID: L7KWUFRfMS9cnwEmxJsaJEzl19PfHzjN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNCBTYWx0ZWRfX2dgXjQlBD6FQ
 XnyZdmE91K1mFhKS0iy9aswAh4YNKfZnnHG7Y18l6AeDSTNEkHuCVOkrECQ3EDleQZ7Yb+PuRoL
 jOHG36X1/5R6WKtITwxL3MpTVu6ZRoQ3b5QCNvcL09OIZ3neX8HgG0xbj1KVND5wDADXv+riAsy
 eunWQdZM8hLR+TbY3WgXrIXIs3UKFgX6bgMHBlLrJhJspXlmz5M9gfZkedT+YOcyVI0tkyp8vw+
 8hRcIVBC2erUoc5kXq1xYeMqtomHcT68aDua0CmodMh8OgbrPLy78HN3iKYmH5g+nI39kmlEqXj
 uHwmdegSPe0YvJ6GAL1L5SpG5EugepEqNLWlKoRQdnDtNC2AM05mZid2iJKXsOZ4r+5NtMPZwJ7
 ZEyCBnJ+iI4osOtmLcblkkUK223Dlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270124

On Fri, Oct 24, 2025 at 10:59:07AM +0800, yuanjiey wrote:
> On Thu, Oct 23, 2025 at 02:59:12PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Oct 23, 2025 at 03:53:52PM +0800, yuanjie yang wrote:
> > > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > > 
> > > DPU version 13 introduces changes to the interrupt register
> > > layout. Update the driver to support these modifications for
> > > proper interrupt handling.
> > 
> > So... Previous patch enabled support for the platform and it has been
> > using wrong registers for interrupts? I think that's broken.
> 
> I want to express DPU 13 has different INTF register address, so need to add new
> interrupt array to let DPU 13 interrupt work fine. Maybe I should optimize my commit msg.

Make sure that patches are structured logically. You can not enable
support for the hardware if the interrupts are not (yet) handled.


-- 
With best wishes
Dmitry

