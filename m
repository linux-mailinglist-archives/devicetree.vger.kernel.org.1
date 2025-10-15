Return-Path: <devicetree+bounces-227351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7033BE0C91
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 23:18:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 916C33A9427
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6382E2DFE;
	Wed, 15 Oct 2025 21:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ILikasog"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0FB218EA8
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760563080; cv=none; b=kwCIW40AmX16oZdJYqLzp/wFnKjR6vrVLRTNx4Fl6bNe4cLaYv6QN1WUdncJlKiYBmZCEN893bPyi85d2FDQQGCoUsivdAvckuW6F8KuHFSQoUTh3gTAoGdiX9MOVtVu5zkvljwBIN9QjV2e47B0DqoMt2kFFQzVxDrpvpmMrC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760563080; c=relaxed/simple;
	bh=zk0BBT4Hk+RcSV6kfked05wBSaFZl99P+G64EyCQFE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XV9sGirIzZXdC9beBhlfIr+8KRd0Qhopifzcet9vMetHZGvDVV5Msn5ekBoGI/ULa3W/dI7732q91Yw3lwavY7c3hioCn0nNDlm1uJX3iddaluXp6vGWf2TrPmm/YhK0FONZg/dbwQJ0/+dH6eWA2E+ovBgsC7VJStQhf7n5Sfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ILikasog; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FKJSwZ016037
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:17:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VJeGrgf9qBiX+zK6vs7ZHMmh
	QNY8bpXGFobNX4Fu/fY=; b=ILikasoguN8vUw9dY0Of4A5sKqiegwg4lgOnqIHC
	92cSed539XnnkW/n8gS+c0nlz5XMj32aN14MprGKJYOCq5H9foyUGa3FyQ9JtxHd
	/HjrIr1rlXkJgbIPmZB2iBYhsYZTqNjc1usYb363E+IJP1CPG1Ug8XQgs3/KnEAo
	kWhCtMt4jqZFEdIhyrC3F9WASSsDmKDtP08T8zcEIGD2k84iHHY0tkyHDFm1ZIvt
	xlJaa4Q5d97EguT4RpVki88wEOwnAId50KFjeeig7R0b49Xcb4CPK3ccUkhE3UG4
	CRKtgU1eYgCXdgQp0OY+kSvvOfWNXh2JE+zXHUswp1d6Kg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5p2t0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:17:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8635d475523so7438785a.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760563077; x=1761167877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJeGrgf9qBiX+zK6vs7ZHMmhQNY8bpXGFobNX4Fu/fY=;
        b=meNCH/JJlia3wZpTTn0h/ayBOUosBKcvz5sIH5tZk57CdmRF9ncGEZiO5bW6ebOhnx
         n+YG69NC7Y9C3WHcIu27z/buXT2Ux04kEximgUOdpGuYJQrOq6f7q0K03pQbGWIVMzaG
         3w4bS09dwRrdO9euRIGxk1It2AhZdoRdAue+QVyaAUbkhN7r5UwU8bs3eGiefEh9h69D
         Qr/AyXrPCcnxo3/3h/ieZWNalQ5CWf+rBIYlzSgAscKEh3Yt/PfL3rQXDWbv5zj8VKT6
         1so4IjIPeMhHde4Uv5e/bRNZI02xpXQ2lPOwJHTpRM57T0mZqHiRRKah5S9iqu6ZqIuw
         SSrg==
X-Forwarded-Encrypted: i=1; AJvYcCVGGwx3Jpez/cbG1YSU5QQd9OKb5HMSt49Q+sOSNTfj+cPC4Z7FRT44PlRAlU6w66VnizlyW/tqRtaa@vger.kernel.org
X-Gm-Message-State: AOJu0YzQm5WsctZIjsjN6vFROGQUZtRW56pdI86gUmSPBlvIlIB0QGwM
	FfQEyNTaOUu0WHVBxtq+qxYSwjDGcXuCdn+7+cFkalr9gdAYj2ig3tMqeUI8wqJWGXr/wU2/Kya
	HUryqIw4Lz/ej/6rxZw3F5gcrWByMPRRF6GpSnXBKakSZ18fgthvqlC67JvFPEMjA
X-Gm-Gg: ASbGnctj7hGCBBFA9pZWas/L/kjpQXIQjB2CBK+iEtevU06+5Rdo44Cmm9hbewQch/W
	f8zAZ2eNiN5UrmmSjbrqw8ARZrkkAERBDEe8qLWU7gQaMChCf0lxyE8A1AhoIR1hGtwaQeLaoWE
	F8IF9Gw0Btgts25ch7ZJrgo1M9Zu6PZ22S+fVZCHQCSqEERjXo0Mk4OCwD/l7pNo4N964uFTjP4
	VlHigVmmtx/UshTfYJXhL0zVj4G9Obinr64YORrAbAjAYZ7El+fR4FwYKFEjpn1jrVyF5P+mfME
	Rl4o4P5JJZfLqKkbd3fIbI385XVWf3OQp/G/sRW4bQy3jcBanl7lnjhSG4M3wUuWmLY5ScLvYs5
	gF9EtcSzfb5e+MHMHwTO2VRYEgagx2lVEKB0kpTt/SsWsm2eq3Pp9XxFEy/BjDGBJV7SXS03LEN
	8/RG05cwOLP6M=
X-Received: by 2002:a05:622a:4ce:b0:4b9:d7c2:756a with SMTP id d75a77b69052e-4e6ead709e5mr430447331cf.77.1760563077208;
        Wed, 15 Oct 2025 14:17:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWUJjpWuy2SQ3uK986PVDHVWiBrMZNqixssrAxbnP8C6oKcxQyRgYATBifnIDH6x3LpocicA==
X-Received: by 2002:a05:622a:4ce:b0:4b9:d7c2:756a with SMTP id d75a77b69052e-4e6ead709e5mr430446851cf.77.1760563076717;
        Wed, 15 Oct 2025 14:17:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3ab05sm50829681fa.44.2025.10.15.14.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 14:17:56 -0700 (PDT)
Date: Thu, 16 Oct 2025 00:17:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
Message-ID: <3frncuf654d6wjvegmlwvljouk2xehsmouwjkf2zlgke3t27he@3uh5zyfyglxe>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-4-84fa7ea638a1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-4-84fa7ea638a1@oss.qualcomm.com>
X-Proofpoint-GUID: g9rgL802pUpVRB2Lf0wE4n51Qc23jmeY
X-Proofpoint-ORIG-GUID: g9rgL802pUpVRB2Lf0wE4n51Qc23jmeY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfXzHWLhZuWTnbk
 5oP30iV1BhSwb96paPc6vvuE6BQsrfhT6jzsz8Xk9sDodmqNAi9AvuPWJ5/Jmu1EQDu2BEvFfvg
 gKmUfCYj73BUktN/FCLlSPANd4TB44C2roFpOfDK0TbF/YBSjM0rI9sSaU5+GsjdwwF8k8dFG2f
 0RIhhPpcNx/J1/zYMMNuqXqdTkiwE4j6a3YSqPPy2K+2B1QnR5vNmoik7a2tBowGmHLvIJvh2zL
 HfvKdxxh+4lT01ujiWdcnhZ6sY/qkuLwrUgSGKbn17EUqOQ1qQ1I1uJzvavpees9gV5JNxX6d5T
 fiRcuQX69RUYd0LuhIstxVwsSFQG4t7+JS6+sBR4T/2U0jZBGQp8oqT0guvzRJ8kbCsc1e+xWvS
 iOGWjjUuFgt6JeZYmCsERlg00GUbVA==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68f00f86 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=aHvCONSEC-igqZHWBgwA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020

On Wed, Oct 15, 2025 at 03:27:34AM -0700, Qiang Yu wrote:
> Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
> PCS PCIE specific offsets in a dedicated header file.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 34 +++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

