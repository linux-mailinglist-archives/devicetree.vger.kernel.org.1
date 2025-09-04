Return-Path: <devicetree+bounces-212853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E50BB43DE5
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86DA2547EAC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC493074B1;
	Thu,  4 Sep 2025 13:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CQOpSyAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0643002CA
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756994327; cv=none; b=r4xm83rvYoF/ueNUDy/ndmuvROdX+rNdazTkitOKmlfJzivh+3tQAENPc+NdrIbbtXgEsdXBzNYEgbb8qrCJY+cRTG2tEDnlR1pVhtLTuhABDPulm38cL3TNPUURlWs0e99s0ASAeJ/EJjfnJJhmfBmFf7BWApLvdfo9xXXinos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756994327; c=relaxed/simple;
	bh=zqDYEE7xs6zmmqkVqfGgw4oWt6zqxepm82BdlY1K7Xs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QJ5imnuuRrzzf6Sl5MWk+ZQudgTAm6e28CJITPV2Vd94Qh1OgVf5SbrB2O4nL6/MrFPMGgI9daHcLhghnjbhH1GRCMPZPv4Ia7yGJY1ZQc/5psw7Ohci1HWW226MWrKWIfRYiqXh8weAO01ojnohVLZS0OFY4PEUGEl6IcAUgqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CQOpSyAM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X8EO022166
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 13:58:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3li4coGXy5SzIXwPhJBRO2Cvjfz46MuwcOqco3dfBhk=; b=CQOpSyAMqzzF6mB1
	xtL5lv9x3eFcuhoNPJeo8E+ozULx6kQJm6A1QkOSBofEX50Eh22LaMjtvIG1tYsh
	KG6/knPAQWI4yy7nm/cLKltq2sPRULkBmC9/XJJC7mfM5+aEFrb2C9hhWTVozaz1
	jna/14s5If4JLxElki283cPlH6nlJDMyZU/vNSiar79CQhobeys1OErC2r1MLumE
	o7uQeXVhVH7YLxEIGw6klLl9gREJdavJEQvSkqrRXN9V1SRsBeQukvmbz3+f5lEY
	05MwS2R+v/DA3pX5vIDQpTTXU2vzSL9PfgRngqujVhFxa4nPXfCgyEh4bii1lH99
	Z+8ldQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk97hdh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 13:58:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b34c87dad0so20899331cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:58:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756994324; x=1757599124;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3li4coGXy5SzIXwPhJBRO2Cvjfz46MuwcOqco3dfBhk=;
        b=buWoi+GL1oOB2xFcdws8p9K2CwIOxSrCLr1qNHzlpMDpBeOrNtL8GEodnOHEYZHTZq
         mYOdpMsvdYOCOdLIgy6jnHDyjnjDgIqdKf7J2tdyzoH9CiyUuJhzT6a3Vjgt+sUxtsY6
         fO7k0X2W31DvkYI+9a9DnB7MsItRaLU0Wv5+S/pWZxt4icdWX8bbvkLkBA9RsWIzadts
         xtQNSYkfZCYmAXq3ye3SkA3P7gio7+q5fH2pwu0wKd6SHYk8NApR65IyOZtBG5j65KSq
         51HW/bmeSW8JuNpfI73ArwDDe/7/ojoPHjIDOAGAiAJCb4QNMVv0IkCbNugiDtIgYEqB
         cNQA==
X-Forwarded-Encrypted: i=1; AJvYcCWCF5mDOJP+Ge1TG3WLGBUyerweReamBN7OKuiwgEjbJwfd8xomwDJ8MvOPujjN0WeX+yyXVp+zwabh@vger.kernel.org
X-Gm-Message-State: AOJu0YzU2qSRNsUciE0g2e5eWaIdVTKBkFAO698x9NqUabADzFiltSn4
	taRWUiqIb30xcURgm7dYBpg3sjUu3ie2W5z30T9xdbf22FTxl8doKAo10fD2IP3RQWkMBQ64rU+
	cC+A+5sXXTvQzMuoPUxVLHfzHho3LivhmIE/2la91UC6xtfqqxb/6nrXhuflwQXre
X-Gm-Gg: ASbGncsrOTE9+6P+oZHng2C54SsuomUbUXg0k6lB2tFLsnRlKWVUDDl1RBZCiULaeqL
	JKigPuUHrjYlT2N90Q0UOPedCgH+kjW/FIq9GpgmXOVjilpyvdCEdO5Sq9+Z+5JGDNqYHv7RJo2
	uSN5OFsTINFiPCjylXO7OFpWQIsYWCyjdnZ17Ny+4Gj0WKy5QoOqpA4Js+yFSMntePLR6Dnw4Xq
	ySZZvLjzBZQzk4I8gHg3okS2UogCu6M3+mgVA79lqTEsMm29nG4fkOTHGWG9XQorU5zvONOchvg
	XUSDhRSepkAQ8CZc0jYXwF3kxeBSSCiDXK+N7dUDlsGPZ0BdWrLiF+7gkQgDwX59y7TTYvVNof0
	UAHe0cofZgL2DX6q98G36vLzhwyvaGqog6i702SvI/Zhe+jr12M4S
X-Received: by 2002:a05:622a:5445:b0:4b5:4874:4f8a with SMTP id d75a77b69052e-4b548745167mr35483701cf.28.1756994323362;
        Thu, 04 Sep 2025 06:58:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBzxCSGcfklAF0/xmKGaR2pwlAaKBc2NDu1+M7YnxZA2yQtM1955eKA9b9YXi8tVVvEeD19Q==
X-Received: by 2002:a05:622a:5445:b0:4b5:4874:4f8a with SMTP id d75a77b69052e-4b548745167mr35482961cf.28.1756994321879;
        Thu, 04 Sep 2025 06:58:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfc152sm1250300e87.101.2025.09.04.06.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:58:40 -0700 (PDT)
Date: Thu, 4 Sep 2025 16:58:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v9 2/3] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <wturd73lfutj4njzrmatzli356cfyehbtr45fjcttmbo2pieu5@he3fnsqzumfv>
References: <20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com>
 <20250904-hamoa_initial-v9-2-d73213fa7542@oss.qualcomm.com>
 <2o2ypmxo6wbohrb5edkj27ueqpgbqhsnqu4ofzfubtfwg7vyri@mdsu4ca63fr5>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2o2ypmxo6wbohrb5edkj27ueqpgbqhsnqu4ofzfubtfwg7vyri@mdsu4ca63fr5>
X-Proofpoint-GUID: LbT2s1G9iONX2N7KERM9z7r_12gvUfjY
X-Proofpoint-ORIG-GUID: LbT2s1G9iONX2N7KERM9z7r_12gvUfjY
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b99b15 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=g8UA7gJT8kHEbcL_ufAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfXxLq+kK7yg2rO
 NypGvLLfBjHEFfBuCttcslEevIib6pj47n+zOcqBt7RuZ4JEBwAiFljZliVipqwP9BOb0JO+D7G
 38ly3aARg9deDMnh9sd1h8sPvN/hy4DYCAURbBBBuqVnviBZIpdEihVwvrmaAn2ROj/6VZGe2iQ
 d4/wMSwSAfQ1yiCyhrJAdHc6C8XEa0FfzMO08Krj1+yrUsmFdIJNJmDPZM1glOfkdxlZRJhcjMm
 LS5A6yiAXr6nJ8DZdhFEBeAl2UhafsUAP3ChQmAv8ECP4n5IcdE0bFFPO5DdyZugWMcINzZftj8
 4GqteNQcAGxj9rVPQKNpCTvc6ZHw3qSuYWkZ9n+9VOW4hf2bgjLtBR5wDqTyGnVKkh2XsMZXzd3
 x7vz6pvN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On Thu, Sep 04, 2025 at 04:52:26PM +0300, Dmitry Baryshkov wrote:
> On Thu, Sep 04, 2025 at 03:48:33PM +0800, Yijie Yang wrote:
> > The HAMOA-IOT-SOM is a compact computing module that integrates a System
> > on Chip (SoC) — specifically the x1e80100 — along with essential
> > components optimized for IoT applications. It is designed to be mounted on
> > carrier boards, enabling the development of complete embedded systems.
> > 
> > This change enables the following components:
> 
> Documentation/process/submitting-patches.rst, "[This patch] makes xyzzy
> do frot".
> 
> > - Regulators on the SOM
> > - Reserved memory regions
> > - PCIe6a and its PHY
> > - PCIe4 and its PHY
> > - USB0 through USB6 and their PHYs
> > - ADSP, CDSP
> > - WLAN, Bluetooth (M.2 interface)
> 
> No, you don't. WiFi and BT are not present on the SoM.
> 
> > 
> > Written in collaboration with Yingying Tang (PCIe4 and WLAN)
> > <quic_yintang@quicinc.com>.
> 
> Co-developed-by, Signed-off-by.

After checking old thread, you can ignore this comment.

-- 
With best wishes
Dmitry

