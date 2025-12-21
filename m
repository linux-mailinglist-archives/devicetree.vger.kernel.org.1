Return-Path: <devicetree+bounces-248584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA0ECD41E5
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 16:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B45AA300E3C5
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 15:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037032FF17D;
	Sun, 21 Dec 2025 15:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dtuvB0tG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ilxJTU6H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480351E2834
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766330263; cv=none; b=sd80JFfSljtDosQs5CWiKMejmZ7ecIOguUtqoxcxFt0GFYUIg+gRpcuKPnlxA0fsgf9Kw7szGMOe5Q9idI0ZrlNH4FZlF4PmmYXsf1gLlMPNmcAFxLmHG4vudHp/S5YzsDeU3jxt4x/zK7gFPXx/AKLWlHlOGTnqEwvDBR9kiW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766330263; c=relaxed/simple;
	bh=O8Ljl6ny4gYtwfeLGWgqI2OsKwy1/hR6f6slv9eQmQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PrJnPSpW8+8TuI/pFXmEaEUunUdrjVH6tvL297wWM86iUb1mtyespPolt1tVWS+FGEtI8uWqwd6EPo80TNEpZqmJB7jfCk/Ti1+xILk6EiV/S7rz49Lu7if+v/yqqu6Arh7R7Jpgr+1+AnZBJO/eJKWgQym8e+/3AOwHYAoh1As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dtuvB0tG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ilxJTU6H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLC0E1p2520282
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:17:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7rJ80TQJNXIxDMVS/D4unPD37OYkqJJte/eUJbr6V3s=; b=dtuvB0tGdKvRHHjg
	DfKvuXa4H5Cirboh4Y12JHjvbIX2qp0TFJFlHZjnZvgYSHChigwiiptYfcpPAenz
	VZJHmvhMZCA5aBPYfAUtZbKJCT0vxNsjDe65J5Bj+0KmrP+uwq1EF26KGuV5SE8H
	HGpy5mzI1BqbKGbrMowp8ylbr0qqCcwowXNTzOt6hTgxoQy/8iQHXMT9ytwobiXr
	Y0mPuKHGpC5qrROFAY7mmux7ZYFOVB/n8TibCh3IvzWO/M4JSwIb3fLUX24s6VUl
	iuSMbvAeijMJG5QY2+G4X1of6pv1XAKdSuOLEXIWCFqcSCOKm+uNv1QFL2Sp1+np
	fO8jpw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mru2gxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:17:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed782d4c7dso54921041cf.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 07:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766330260; x=1766935060; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7rJ80TQJNXIxDMVS/D4unPD37OYkqJJte/eUJbr6V3s=;
        b=ilxJTU6HkTWnSUSJreaWQsO4Eft6m2O3H5AYAZcV9BbYmQfElDKA8FvbmcczV6gK9l
         Qs6GMAqc3NqR3dXJCtlYBqxcG/ubjcCVVFBA95S2/YQDs+8Mj7HKlUy6H8NqoSUf8i/u
         Ksf1JzY1KF7mPvHXUtjuFCvgxwRwXmVnbu3PZj17yFrPcbdnPttOZipDKGnK4SPsoYYc
         R+bwK/CjXagOjC9HUll0jImvnYvUPqlRXiUlWxONiE9od1LsYqKKQgWnw0aHTqiVCsky
         BrX5RRHEBuQhX7muCVDeE/QbQggLM+UcQd2HJxjbwV40H/+DHK/eIcDt9a/uLhUFCiJD
         8+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766330260; x=1766935060;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7rJ80TQJNXIxDMVS/D4unPD37OYkqJJte/eUJbr6V3s=;
        b=ePpzUzl33AtDvFm7thiQwZUVgUAWwBWU2AmlPuqEqwNGT0kXc0hOGCRRefenXNXnr5
         buBVrXBPJc/0v1mwGF+tkPxGpYbYWfBGsXuFGeMSw2mnLq1wZeyI2M+9YzmJjklBmRHZ
         KWG5tcX1+q7oHfcQrsYnT4lZB1UtfK1QqxV1G6dv/szLidcqwDoB+2I0W6qzDU7NrpRo
         31ZvA3dQBsN69RBWzMdpDkkPtZgb+bJeqHcvZL+ohBMwx941mduOpdz14h/eyHZVC5Kb
         AfChgNdmFobNwc9dyu+DJWF/X2GqIkjGbSxVxTC2LmobubKdGihD9dhm7lu+Kzp9eGgg
         LW4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXfHVb0z3tfuC1Rghwns4QDZH8x40qW3kVF1M0wbuK8AVm5EzOlrdnfLpal0YEPWMGR6mxLptXsDL9z@vger.kernel.org
X-Gm-Message-State: AOJu0YypUil4Gx121Pv9pO782pdDT3Yop7GKt+fbKfJ4CUONQJP3l/oQ
	MRxroGXfO1CEqa/yh99HRz4OT3zWzrR5kFlEyj5pNgIkOyLaYoFvw3Zq63OBoS8inYmy5NxHx3+
	D3paPghv7ri2cJF4LNBaMsFXNttxj3OgA4+MM/gQLjz94iCP1LN+6FBts7YiBCf1/
X-Gm-Gg: AY/fxX6mjY12xOlwf06iRSmhhJ+9PAi1i+mFX715+Sl+IvP58d63YgWqT7QVcp0aH/r
	JQ465ZZ3wEXNNGjxuCJE5MsxwX6E8hD4ITJzNju9qF/RfPXLgGKezMLl8OYpjrL4JGzw8LvibNM
	b7dr0Zk6VBLPFYV33TjKwa5mNlTXe9pSt1PBKY6wmzC90h8Pp3fVhIe7R01yLCDUOtxqMfi5hVZ
	hdHEUEa9n47YjaFyQoVh1lT6fEpwM44Z5HgXG62io/R0t26BWzDRMtJtTmcVsFiVHY44NoxLAB/
	iThCxUjKqkNwhrbqdaUpfkdAk7BsSnXwCoa3dOqR3isOsAUxctXZugEd2RjvX14RpEndfr1/iH8
	riE2dLYeh61lqRtzRWrY7cg==
X-Received: by 2002:a05:622a:190a:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f4abdef53amr131922721cf.80.1766330260324;
        Sun, 21 Dec 2025 07:17:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHxsoHvnfZc+w3gGdVW1PaCmmIwz4dUySH+IJcVNBG+ANeGJU2P6XViHoZuAPhTeBb1aaOQzA==
X-Received: by 2002:a05:622a:190a:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f4abdef53amr131922101cf.80.1766330259645;
        Sun, 21 Dec 2025 07:17:39 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b82e7sm7925612a12.35.2025.12.21.07.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 07:17:38 -0800 (PST)
Date: Sun, 21 Dec 2025 17:17:34 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
Message-ID: <5mxpioeokzvn22oirgvp4gwjxvn6acvwfe65sch24fpapklvl2@x2rd3b4nrbx3>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDE0MyBTYWx0ZWRfX+W9WOKGrM8A+
 4PWVaSuI2lQmDs5nykztcRzlqTTcvZSeE0Qf3jsG4P++LW5syb7vEYPlyUzQu0UlN/8TC1oJLx4
 bi+gbopfSObdoeGZNkD+ELlGdyF/D6phZJWJBZ12QSb/IgdLJ1dSyyhh2tf2RGNWo8NIRLqYyOu
 2k+OZ+jOcRTL+RDaDLWArCquDGsRjEUfA+lHWWA1vJIF6Z3Jqicr4sf47Y0Piol8NdXkZhnRSSA
 AQ15k0y3gAI326YoAOWaCKyaYOmZZ5Pki2JPfh7upBlJq5/59+C3rxYR2bWXnb5SNduptsBpZHR
 8SQBWDHT7kWKyZ7VeS4+gQixa8n5s1KeaQrJMa9uY3J4lAW99RYlzp95l23BK1HGsXjftdSQKyq
 HJOn03lGi0CkPGiDELqKQRA3VS2/QKWRNVCbQKbxrWzSOjhiMQOO/OOGxHCLEPsjODA5RYFq0cu
 WMtLyWrNvQFsKeJYSUA==
X-Authority-Analysis: v=2.4 cv=VMnQXtPX c=1 sm=1 tr=0 ts=69480f95 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=2YI1vyslcR4oq2EFnN8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: i_nffsfDjns1FfZ1j3j8ewS4u9qhCSee
X-Proofpoint-GUID: i_nffsfDjns1FfZ1j3j8ewS4u9qhCSee
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512210143

On 25-12-19 20:16:56, Pankaj Patil wrote:
> Introduce the base device tree support for Glymur – Qualcomm's
> next-generation compute SoC. The new glymur.dtsi describes the core SoC
> components, including:
> 
> - CPUs and CPU topology
> - Interrupt controller and TLMM
> - GCC,DISPCC and RPMHCC clock controllers
> - Reserved memory and interconnects
> - SMMU and firmware SCM
> - Watchdog, RPMHPD, APPS RSC and SRAM
> - PSCI and PMU nodes
> - QUPv3 serial engines
> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> - PDP0 mailbox, IPCC and AOSS
> - Display clock controller
> - SPMI PMIC arbiter with SPMI0/1/2 buses
> - SMP2P nodes
> - TSENS and thermal zones (8 instances, 92 sensors)
> 
> Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
> PMH0110 along with temp-alarm and GPIO nodes needed on Glymur
> 
> Add glmur-pmics.dtsi file for all the pmics enabled
> 
> Enabled PCIe controllers and associated PHY to support boot to
> shell with nvme storage,
> List of PCIe instances enabled:
> 
> - PCIe3b
> - PCIe4
> - PCIe5
> - PCIe6
> 
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Co-developed-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-pmics.dtsi   |   11 +

Separate patch for each file, please.

Abel

