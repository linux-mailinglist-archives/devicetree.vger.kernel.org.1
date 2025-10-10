Return-Path: <devicetree+bounces-225251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D6DBCBE29
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:13:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CFF83B0F2E
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3EB270EA5;
	Fri, 10 Oct 2025 07:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SABTPONg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395121991D2
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760080410; cv=none; b=kfz0YYtl/gSOzjA33IQX5z9rTJf0dQ8u33tbeAfirYzphXPg9S2I3hZIa+xVneuENxgM+cm1kcLHyOpYDgiFzMNRIIWz5N1+t3DHzG80hG1cJqt4k72wpA19XV2y9iO3ABq2AyWOrNK6pGyHX0rXkBRNOAlfbEbsYBPZEF9kP88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760080410; c=relaxed/simple;
	bh=ts9kOQV52xX2ipkuJDjIaYy4QbG40eTx4UG+9BV7Wxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VmQuVBNu1DCxfRslPBUM1KBI+W/FdeDgYUvBeisF+7W82biAgLdDR0PPVzz5rHuXaoZDwaU/sFqmhopCwhcN6VHPoiw6zfbk4shkFWgSX510Djc44B1khL5WLkAGlvY/wnSFZSq9iWpVwCxSyauN3/npethuoHet0D0K0j36Ygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SABTPONg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6XMsE009406
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:13:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KR/Ios316oNkK2GJ5MYH0w1E
	L7QWbrsGiZOp+JqAuJE=; b=SABTPONg6XJeCij2J5BfYfXwx+rYlvoIyOjXwfay
	h2M6Y5GAmx8to10ygS2uH9EzQhp2qsbWU3wf2EF9++qhsNaAEc7hLto+3FgQPEti
	v3IyZK4QKThOmgKLq0zDuf42DO4xBKc5Tr4BVbuMBcNyaKFdzP6eSegBxspSnJYW
	s+hhBHWb43B6O4Krdf8XaLuwywdkMr6yGwAR7Odn9OKyUbER10lycwq8aORZetV7
	YyibFS+AubM9r/EqqymE8UNtxrqU1VrqzCmMnLT/WHxs3/valwN0BaiGW/x2/zLQ
	P6l4jDoZSW+uLZmJVM8DG2cMxyC84JFZMwzEvEH1k7zt3Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4knf7f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:13:28 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28c58e009d1so58986835ad.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:13:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760080408; x=1760685208;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KR/Ios316oNkK2GJ5MYH0w1EL7QWbrsGiZOp+JqAuJE=;
        b=eS1fq6GQCVu/biq/NKRlwnnWBspbcDc+qpS3bDg/EklhFvFwkMtER2n6/CjAMrSpvV
         P+YjWwqRZpyrPK6FuF5e2tslmL8r36MvK1oX/LTuqro7fO4OWmgaRmHH7JQ474W0TmIO
         I/hUM9M+Uk55RqrK0gtWx3IuClgCsUGXJnFMI6XGcbMfmBKfs5aORrGQlzTwThgyYIcR
         RGzfWMmhuYHCCKbM9LjLGwv3gXmhD8lYeTwkN+v/jcX0ek72uWUrA1nhK1ZUqGdquvkG
         CYwWK6d1X4ZfKRGPZoCPCCGhZlW79D+G9GlX30NvA9JXkAC7uistyBtoM8z7at1Sz/Hq
         +Fuw==
X-Forwarded-Encrypted: i=1; AJvYcCUVzp6iPvLV5/7IcbQ9mjn1pcIYZI9glClvXo89ZLR8O6Gwgcq5sx2XnmO3iZOa4HVKVQZBFJeZW+x0@vger.kernel.org
X-Gm-Message-State: AOJu0YxDtfWnrdBQ7Ikc6+TTOdWZo/j02qU9YnQtmD+gAgVebTMbvBtb
	tt4ibUlI8l7VbLxuvM4JegXK1DyMyCpqrSH4gNazdorkqlJEf7UqdZWnQbBIO2taLo4umPx0CBN
	nCxKvqsz6z3akiaObr5KpU3DB/keMrrGV4/Z/Ong9NUDXv7su9Xthc5NhfVsSFdGC
X-Gm-Gg: ASbGncv6wl1HuheTySEuC+hulR8GrtxWR9ajsj7+74JQR/Laq35H53ltFHmJboE4mVz
	0TCUileKJV8CH3jtWTaIq2KVrqsR5PShcQ6cIDnOmKBuUHwTpKGpmjgQdhMBCR52akp1TZBlHjC
	V06nJlYHY0ZEyzV/ppp0Q0JW40FtFT7SMWVF+574McYAWOAlw7jDaDXvMLGtmx0ly9wryr+W8n5
	Yq5yA7Cb/OIxJfOwORgCuSzJUjPrgU7KJV8ML72no7JmILtiI4bIs13dJmWbLHr0aFI6m/bbtGh
	py7gOLv9T+aniPtowTJtnqqhl+RCw5nuaS/91Cv+eG2X3gpaKxTm/oG/V3EhqKWAXbiZSebD2cR
	207WpyhXKUNA=
X-Received: by 2002:a17:902:e94e:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-290273ffbe6mr131256135ad.47.1760080407484;
        Fri, 10 Oct 2025 00:13:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZomklByII8D+XieFuJ2V77oyKee3Dzlu5Ztu8yLBuVQK2BdzUtqGP5w8pf/EdEOpW5U1eww==
X-Received: by 2002:a17:902:e94e:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-290273ffbe6mr131255795ad.47.1760080407019;
        Fri, 10 Oct 2025 00:13:27 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034e45568sm48077925ad.55.2025.10.10.00.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 00:13:26 -0700 (PDT)
Date: Fri, 10 Oct 2025 00:13:24 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 20/24] arm64: dts: qcom: glymur-crd: Add power supply and
 sideband signal for pcie5
Message-ID: <aOiyFI0gBDh8YwLL@hu-qianyu-lv.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-20-24b601bbecc0@oss.qualcomm.com>
 <qudnwwle62rekkuaeriqhvkvk5xukl4fmkhkzjse5zud37vlxl@gek6nmscgvgs>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <qudnwwle62rekkuaeriqhvkvk5xukl4fmkhkzjse5zud37vlxl@gek6nmscgvgs>
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e8b218 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=CFs5gaHkoshYMbNuCBMA:9
 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: HkPRFxtX2H7-jvJqQxDzwjj8CzD-ebID
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX2Cr91qvmZqQ1
 enLDVG/Flmek6Wn86LONbP+fjFKxPIFUJf1qFMaglCPsp6Om5VjQID6poZ5ScGZKW3PyaxrDs2j
 FIeK2QMGHKQmYT+w3T61KNQvK0Q8c+N+rtJ29oC07TGMwRxhb58EfZT/rbmADfj2sXQ7KY5oV8M
 xZtxCV6bFrW2uj9co29KOuCy2e4/aqbB/JhMKBdTzAw1/ajElxeb6Jwfvzy/JiTyyb5O5suAg5t
 lAM9g8rqCB03uQ5j4c3JlYVCzCFTvbz/cylXYLO+oTaVWXQNVjBBVRVwxSmY5q52dRo0LvXLP9P
 EQqZKB5rhIt3tPVx2UTm7TW6RrrBoBdnZ1Oma3XEeQznf3R0RHS6Vf0OtmnG8kSriQrvn3r84aF
 Typbi12+LLUReQLsVPvMF3BundZguQ==
X-Proofpoint-ORIG-GUID: HkPRFxtX2H7-jvJqQxDzwjj8CzD-ebID
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 12:53:24PM +0300, Abel Vesa wrote:
> On 25-09-25 12:02:28, Pankaj Patil wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > Add perst, wake and clkreq sideband signals and required regulators in
> > PCIe5 controller and PHY device tree node.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur-crd.dts | 68 +++++++++++++++++++++++++++++++++
> >  1 file changed, 68 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > index 3f94bdf8b3ccfdff182005d67b8b3f84f956a430..03aacdb1dd7e2354fe31e63183519e53fa022829 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> > @@ -107,6 +107,20 @@ port@1 {
> >  			};
> >  		};
> >  	};
> > +
> > +	vreg_nvme: regulator-nvme {
> > +		compatible = "regulator-fixed";
> > +
> > +		regulator-name = "VREG_NVME_3P3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +
> > +		gpio = <&pmh0101_gpios 14 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +
> > +		pinctrl-0 = <&nvme_reg_en>;
> > +		pinctrl-names = "default";
> > +	};
> >  };
> >  
> >  &tlmm {
> 
> so tlmm already exists in here, but ...
> 
> > @@ -461,3 +475,57 @@ vreg_l4h_e0_1p2: ldo4 {
> >  &pmk8850_rtc {
> >  	no-alarm;
> >  };
> > +
> > +&pmh0101_gpios {
> > +	nvme_reg_en: nvme-reg-en-state {
> > +		pins = "gpio14";
> > +		function = "normal";
> > +		bias-disable;
> > +	};
> > +};
> > +
> > +&tlmm {
> 
> you add it here again.

Will move this part to above tlmm node.

- Qiang Yu
> 
> > +	pcie5_default: pcie5-default-state {
> > +		clkreq-n-pins {
> > +			pins = "gpio153";
> > +			function = "pcie5_clk_req_n";
> > +			drive-strength = <2>;
> > +			bias-pull-up;
> > +		};
> > +

