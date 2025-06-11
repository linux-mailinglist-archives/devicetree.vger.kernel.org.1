Return-Path: <devicetree+bounces-185041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E340AD6401
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 01:50:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2BE817E70C
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 23:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A9A2BD59B;
	Wed, 11 Jun 2025 23:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X9xHw1ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AB923ABB7
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749685835; cv=none; b=G4rpzAxalb+huiyKiAOzr5OqikLe9noZ+XCj0mdf79ro/uSOsNCFeaWiAKxWQdfqjP6D9CCnRlfzUYF7Z+OUQyCbacSGd4BYwPVxfH3dZBKOQoAxRxM5HJNL0v/oVVHdlfe7R7+n80vNk1LBmGy/zLY5Rz1vHBeipkafNx28TpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749685835; c=relaxed/simple;
	bh=n0e7INgVxB4HR0E5dtVq3apkvTC42DhlTc85mp9u8JA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pe/k7d9cWg8bpoay2Qp1L/YK3i+TJCuc/khnAIQdGN+zWp94YQ6BUaQ7MpaUEDB6kBjczh4b0henQNLl3M25yTaacyMv/OmgodMFKu5ImePVM/FzEdo6qTy4ePZvR/uMxRDq34HU2OO6pD/ZZQ0cCoY3SNQYqv/uiepqhJpq+pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X9xHw1ko; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55BMA1ep002664
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 23:50:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DjKLYbO95DLdnG7w+lxTMGvN8HI3D7bK+1IxSfQZCLo=; b=X9xHw1koVLpFyh4G
	fIOl3QFoLERch0lLyavYbajddEtmQM9Hg5RTa1iDpIPaSCHOKok/CVhQHuoBQiwx
	jdTZz82EsAsBB/s9jYgjZ8DxVJW6lwlgkMVsyXhEarnSSBgrkV9vJxzX8JQGUVAE
	YJbe6Dnvxg3DtbOm2Si0+06UlD6Ca60NEsUwDXV4SejyIzZidJTqJEmz/RT1iQQg
	aRdS47aY2uHQ9cvyJWMdCw0axk/caVkmtWN0Hm+BYjllkWP5WefiMJDBz2vC1OLa
	QDv1EeUnO0iILYZNc8KKYdX3MFzVffc9dhZ+SeLfTuBGmy8qU5S/rmQQ82qHEd2j
	Um1Tqw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 477jbpg6da-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 23:50:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a46163297eso9621031cf.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 16:50:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749685832; x=1750290632;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjKLYbO95DLdnG7w+lxTMGvN8HI3D7bK+1IxSfQZCLo=;
        b=JowMc1wfxK0XL686yrcxMi7qNX9FGH8zLIgehBFWbAW9bHvLYQ2Oapt9otPrgOgfda
         +A2mUaOLS0C3azMLnt47hT9KRpkmHD6AX/9V8Hcl2F5eyBcPRlHRV2TXibBlPazf+q9h
         vOgRHE1oaYa+GgrtcukVaMGjmSXXGMAjDLYwRPbsHFi26rc0+wi29HogWf9AXCNmr9iq
         cYIIt2pq092XPSzom31ABnXcBYwoEav9nlr13I7KmltKwWdG5PSsWCidAqoQ9kKYI3rn
         M/YbR4cyCZrtittj4+ZkGqA6ZQonh0C4/18Ei1TSn881SLmhAUE+ri9de/olPdbX6Yml
         /psQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8Hk3evc3Kn8jQaATL213W4qNx8t8fQzQr2B9P8qJ2ggwmvJmGljXJJ7QfYb5wTdJHH+6snyLaJWU/@vger.kernel.org
X-Gm-Message-State: AOJu0YwXl5tCPeHR8ezX+kutSt5MLG9HseXzkODMvbNVlwiCvxk2VDbp
	yRavsuGKGtZ5GYmvnJMO1hsKLozPmi5zOrfidFlWVOns26vYotcaLAu6ZOJTUhttBx1NzQifkEz
	fQiUWp4mkG7wFA5sra8FD4Oew9tiLyNivPdu6C+eTHxMgUlUOFzee1r7ELBDxkKvB
X-Gm-Gg: ASbGncvcUauugeo4mb02KCLV3KeaubIQ2U19oKwEyq3Nrd8xT6M4Pja/RJa2qRPKw6I
	6CdS+FVXuCOQ0Jzz1fUAfkrTE4r/1Lev2DSbIlgd8Bl+ZLpaPc59LsvBzE3bDaT2fMyEpR6ysHs
	Lob90oR7ZJJ4oz2t/3UvpIRCSlIHtz1Iu7tpoHPZoKjRiNlHWKB991au9VRXFYaRd52V+5i1M8u
	ntMjAARkxJNGr9ZtnPmwVq3OzwwBVeZ8khNA+pfOCoRqICIMj79jpexVO22PM/NNzzEzfll09+h
	oD1FqN3InY1c/KTs0g6u0s+R7duX6QJCvjomA8ZIXQ/J7k0zxVgICH4y+hlW1mo+IgnCL0g1ZDa
	la5ewAStLn7QJHVJU3aJf8CNe16dUhjtQqcE=
X-Received: by 2002:a05:620a:3195:b0:7cd:31ca:d76 with SMTP id af79cd13be357-7d3b2a58bfdmr198250785a.33.1749685831919;
        Wed, 11 Jun 2025 16:50:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFseGq/J3dqksP8dXd/cymzXG9fmBAoH7irwZknLQOdL01xeRG37+7d7pXMTZO5pGH7IJ6dww==
X-Received: by 2002:a05:620a:3195:b0:7cd:31ca:d76 with SMTP id af79cd13be357-7d3b2a58bfdmr198248085a.33.1749685831517;
        Wed, 11 Jun 2025 16:50:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3304f39csm321391fa.20.2025.06.11.16.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 16:50:29 -0700 (PDT)
Date: Thu, 12 Jun 2025 02:50:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Cc: Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v2] dt: arm64: qcom: sc8280xp-x13s: amend usb0-sbu-mux
 enable gpio
Message-ID: <bjh5q4kmctc6umyg6iti6j3el5iuaaweqxqk2mrzlj35h263lc@wkdecz3pgltc>
References: <20250610-x13s-usb0-mux-v2-1-598454e6ad64@oldschoolsolutions.biz>
 <aEffYQND8eUgJbua@hovoldconsulting.com>
 <64d963bd-b38c-4f14-bb1d-f7e89dad999a@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <64d963bd-b38c-4f14-bb1d-f7e89dad999a@oldschoolsolutions.biz>
X-Proofpoint-GUID: SV0sS2IEzc2UuXamy0HkV5GBzd3lExTy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDIwMCBTYWx0ZWRfX7+YtY7tEbzdI
 WzG21E5ZKl4mwDsC0jB4o8rE5MkfjvQU/gwE8ocYKyHr8v57y6X4fmEAPtWO+tT1Bfcgs+kZkQR
 7C2nOhygOiDdp0ZgYgyl/egv7qej5iIGuJsuR7G8d0lw+9i1ViKI55EAB1F+nnn6+c1r0d4Zhoc
 fdF39MGGq1H1ojMcLHMQYOXqMVeH+HQzrWCYs+KzZj4VyOyZZezse8HM7nF+uYwDZy+gRuvOP9I
 RIRV8OPhP3JFpWN60kye0EvB/vjtBwYCPmI9FSgCnCJaCaQuTYqcTL+KekP5IpXI2LycNZxE/ye
 Lhy006XMt53H5M20seaCaz1okFEokPKrJk/CCoLgHorGRle4H2FRYiMrrIJTm3nuha64phnZELb
 7Dx/lXKvOMDSBRww1nyod2dMfmaIB2bSzNFMZX34hFQP3DpCd187OmX62H0dqW63HA+9R+9W
X-Proofpoint-ORIG-GUID: SV0sS2IEzc2UuXamy0HkV5GBzd3lExTy
X-Authority-Analysis: v=2.4 cv=OLgn3TaB c=1 sm=1 tr=0 ts=684a1648 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6IFa9wvqVegA:10 a=lRGrZvPa4QksXueXqpIA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 mlxlogscore=692 suspectscore=0 adultscore=0
 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506110200

On Wed, Jun 11, 2025 at 09:25:20PM +0200, Jens Glathe wrote:
> 
> On 6/10/25 09:31, Johan Hovold wrote:
> > On Tue, Jun 10, 2025 at 07:04:46AM +0200, Jens Glathe via B4 Relay wrote:
> > DP alt mode works on both ports of the X13s and "resulted in
> > gpio165" makes little sense so this commit message would need to be
> > extended.
> 
> Well, that was the problem. It didn't on USB0. without and with the 4 lanes
> patch.
> 
> Observed on Windows Dev Kit 2023 and X13s, what prompted me to look deeper.

I have verified, on my X13s (21BXCTO1WW) DP works on both USB-C ports.
Moreover, according to the schematics that I have, GPIO 165 is not
connected.

> 
> > GPIO 101 *is* the OE_N pin, while GPIO 165 is not even connected
> > according to the schematics. The mux may still work after this change,
> > but you'd be relying on it having been enabled by the boot firmware.
> > 
> Schematics trump any other data, of course. After a lot of tests and some
> wild
> results I could narrow it down to the display I used for testing, iiyama
> XUB2792QSN.
> It works with HDMI adapters on ~all other displays I have - with and without
> any
> 4-lanes, lttpr patches. And the original GPIO. The issue with the display
> appears to
> be something linked to how negotiation is done by it on that specific port.
> 
> Do I need to do anything since its already NAK?
> 
> with best regards
> 
> Jens
> 

-- 
With best wishes
Dmitry

