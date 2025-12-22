Return-Path: <devicetree+bounces-248718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4543CD540E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90BCC300B28F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F56330C35E;
	Mon, 22 Dec 2025 09:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OQmotKuF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cp7jykhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B3023E356
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394638; cv=none; b=PNZe7wyXgWbsKGqlbZyjQsmRT86BrWUpHVLyJJ7emcFImOXqfcRBva2MWSBm4BvYsZiXjWVPZPe1PliEhCPhJfFbnY+4ft6137ATsF7CqK32Gnt+Ghc5ajGdmYXz1X8DDvzXY/8YClT59TKxSjSJIpY9Q4F+QsQQ3njSAEPf4bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394638; c=relaxed/simple;
	bh=DRr0TewfY6v69sdEXq9pNt1w/8MDAhk1JxEhdYVRoH0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E2+6hWPt5iS5JDEPMXCGbjQ3tH+dgih861/0wXAaCJvbVMTr9+NO1S5edWSLapCeKVM3Pd7mpo2dWNNUVc3SYREyUm5K0IkTlHs0qIK4RrUBV502CylwABAe4sxcuXYvFR3jgoqunkIKit0dCC7sk8OVXMuUb8uiHWRqP9k1K6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OQmotKuF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cp7jykhf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8HpHE3841451
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:10:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4SMu2FCRjjUP8xrN7BoNV9vZpE13vWEMWS9Lk+vRPJ4=; b=OQmotKuF9jIi4oS8
	HfLh7etOMEU57Xnq9NtvvZH6gUw9raEjm2XRJJNBGM6n+U8NMjOkHoRq3PYrpRCv
	JsR1YKKsGNYq2/aHaO4Z3e2u3pFY+FPjemQhN0vE/8PbJtcLX6r9Pmsm1kCKnCgs
	lksMRXc+xrGmfKle9cA6139uJChpWeqVCvsriVhBRRY2kfgXSL8lYGrjFqjQOYib
	n8lKWJDJp5HKD46g+c8nPl9KdXYT9kdqWwXaVahXkLw6B0vxhBhoTJ3meF8Bud25
	aMN+kR1DcCpnjhKuevyXjymUN514fDyoPR3oOSwpVRrI8dltxiLS+K/79sRx50Gp
	tZwfsg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry4ctw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:10:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee04f4c632so73967151cf.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394635; x=1766999435; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4SMu2FCRjjUP8xrN7BoNV9vZpE13vWEMWS9Lk+vRPJ4=;
        b=cp7jykhfuMmDN8QCKLIQExH/h9i21Kt4YLwctoOjkkEfJ+c/9PzfR2ouHxW1uGfEu6
         IY4FC31Jx5CNFBfukek6N8l4q1qGHrJwK6MC8I0kLNZCItcHisvPwvn6WmU3YIX11Kww
         N9caahSiYKQ8dsSsy7OqQdBto9/InvujwyC6J4QdWf4Q/6Rgw80KI7gbZKWmJ8qz+WwL
         wsPNVDK/kCzkTFkZBa8jT0aJLTIpQ3S2s37HDdz2KdLRAPWuVVAQFiSkGUKpSgwSyOHY
         Zj/Cm+qIkhjpFMquVNhkblzIK0OmXNyQ39tz3Xu+/M4FmYVCY+USw+bEF+/D1CUWAxE4
         fsww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394635; x=1766999435;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4SMu2FCRjjUP8xrN7BoNV9vZpE13vWEMWS9Lk+vRPJ4=;
        b=NMEVRxiRr0HpP0q3uiUu+2bPNK+IPMmpsbKRei5dIG6y6rkzny2spn4swrY0tsGldp
         JTo319T6pKBcN8n6lpQ8tZH+5mGIIF6FOO0btnUzKwqoWSxMN8UMdrwqK+koQ2L4hNng
         XMhVxk6baIQj1MNV94Sak5q/QVpOoZ1Kt4EHMOqCf1EvRfAxAQp29BQcY8gmj/7nKPrw
         Os5nZPWn6l3RiTX4IV4Pebmow63Awj433nTlgcfyAJBUjdHWbCou04rqQ8Sdl9gpjV4R
         iOuKgHt/l8OqJimm2B4pEzdKp2Du37FvpBaMxf0wOckfY9dwMYktmBgCsyYRk6ArtCia
         9CVA==
X-Forwarded-Encrypted: i=1; AJvYcCX0HQ3NlLPwllfT/wiLsBnWwtME0R89MzX5cJsTpMSrEffi1b7wLGkI0CTOwk7pDfcSJrE3dfc8ekVz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4J7DnbPLyve0WevT/nVali0obxnPGFobEW02foR1x+kx7+a4f
	aXIjEQuQmXYAvkeMKSFBP/zUKVRGx9EXzqUYAgWjyPnWeDh71Q/J5hFIRyYIB1j6OR5Ek8vJmIE
	SBDNzqtcKmJTzkTy9zSyCx1F6fpwNtgvm66wPZm+am/Yl2DZhJ/NuSkwAdx2vLL30
X-Gm-Gg: AY/fxX4ZzxsB9WIb2fyo9uV5EV9Bwurh65AxM8h6JsTR+fwTprbjmpWKRRNkKYQ6Fhb
	uqkLvCmk4laHqkIrjlJoH5L2fQML0W7uJS+GPkOfkq59cEaG1cLzsAnDzzStgm09BoXVEFOlTrm
	6G14iHfelQgIpxPjb6A0/AluTVym+3JzOsTQUdWxzzoo2hqPCQZVb+WOzy9deFHL/zG06XJpYnQ
	ArXQOhwp7cGeiBbv+vBFFR8LtQl19uqIiCInCf1rsv9cBRi3eEBHEQOfEqUg03xF/+pheobLWqX
	PL1oHdJk2fmPPZw7QiZT8fKuxt13hmmbLdGd5dsT8yu6Z57RkmfHtTjq9wh794896KkwNLrNxqJ
	wOKgF2YWTiH6g6Yfl9lZP6g==
X-Received: by 2002:ac8:6f1b:0:b0:4e8:b288:7b6a with SMTP id d75a77b69052e-4f4abde2b02mr142056951cf.82.1766394635022;
        Mon, 22 Dec 2025 01:10:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBGk9ODu3sZZOw09jxqh0swXGwcj1dhrVAuJA1pHTokGgbyJVagbOBuBdRS2nGanhARzDBCA==
X-Received: by 2002:ac8:6f1b:0:b0:4e8:b288:7b6a with SMTP id d75a77b69052e-4f4abde2b02mr142056801cf.82.1766394634535;
        Mon, 22 Dec 2025 01:10:34 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa0908sm20879164f8f.31.2025.12.22.01.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 01:10:33 -0800 (PST)
Date: Mon, 22 Dec 2025 11:10:31 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
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
Message-ID: <f64nkizxsisuyml5xhktdihcc7t5i3w2jmwxftdwnvxmgkjxvs@gj6svjz3yatx>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-3-32271f1f685d@oss.qualcomm.com>
 <5mxpioeokzvn22oirgvp4gwjxvn6acvwfe65sch24fpapklvl2@x2rd3b4nrbx3>
 <rqjl2tqvqourjc5qowehxdemgge3idfy7icmipc7oltkj7tuet@ypsdpbm3gvkp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rqjl2tqvqourjc5qowehxdemgge3idfy7icmipc7oltkj7tuet@ypsdpbm3gvkp>
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=69490b0b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=nYVXfMozlBVXe6LMcb4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfX5uw8w3Cf2jZn
 ovjMjV3/yMM4ROSG6/JhaICH8i/C+X9jfi/WKTLzxX5ru1j28M52OLDCQL8XoeUwXVpF3+D/u0N
 GwS+Rgb2R1vdNKm0rIBsbea2mZLFquBd4CVwG170mY/SnjEGtUP+17n22lvvbWi/5j0/iAEHis+
 fJ6w696zNMb+sIRg20/q81P3ad8cJwn9rQz/4DF4Uj6twUcmFKbm9xM7epsKvcgLJ/mDYtq0E0z
 5Q0Ghvnqca/QZqj/oo+iCGwmWKv8yTGsfFgK+nskwmNnn+2Fg+5lZanxdWxHvC/bHHPZZ2VM+XY
 lqokx/esgY9OEauGLxfrdtSZZY5WTn8wm6ulBUKyCFxdDC1mXsJuk19fxK4tBzLyno4INfE41Wz
 xbptNyTlnwCIO286najtSfZZdkMWvNc63K81XFXRBrgLO6B0KLvEjnHD73vWOppIG6woNt9Bv7F
 rlv/cX26TORNNIkOjLA==
X-Proofpoint-GUID: XopBVJ9qT1vZH-J3i4zm5UqSBjLoIFEZ
X-Proofpoint-ORIG-GUID: XopBVJ9qT1vZH-J3i4zm5UqSBjLoIFEZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083

On 25-12-21 21:36:19, Bjorn Andersson wrote:
> On Sun, Dec 21, 2025 at 05:17:34PM +0200, Abel Vesa wrote:
> > On 25-12-19 20:16:56, Pankaj Patil wrote:
> > > Introduce the base device tree support for Glymur – Qualcomm's
> > > next-generation compute SoC. The new glymur.dtsi describes the core SoC
> > > components, including:
> > > 
> > > - CPUs and CPU topology
> > > - Interrupt controller and TLMM
> > > - GCC,DISPCC and RPMHCC clock controllers
> > > - Reserved memory and interconnects
> > > - SMMU and firmware SCM
> > > - Watchdog, RPMHPD, APPS RSC and SRAM
> > > - PSCI and PMU nodes
> > > - QUPv3 serial engines
> > > - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> > > - PDP0 mailbox, IPCC and AOSS
> > > - Display clock controller
> > > - SPMI PMIC arbiter with SPMI0/1/2 buses
> > > - SMP2P nodes
> > > - TSENS and thermal zones (8 instances, 92 sensors)
> > > 
> > > Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
> > > PMH0110 along with temp-alarm and GPIO nodes needed on Glymur
> > > 
> > > Add glmur-pmics.dtsi file for all the pmics enabled
> > > 
> > > Enabled PCIe controllers and associated PHY to support boot to
> > > shell with nvme storage,
> > > List of PCIe instances enabled:
> > > 
> > > - PCIe3b
> > > - PCIe4
> > > - PCIe5
> > > - PCIe6
> > > 
> > > Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> > > Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> > > Co-developed-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> > > Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> > > Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > > Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > > Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > > Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > > Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > > Co-developed-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > > Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > > Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > > Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > > Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> > > Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> > > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/glymur-pmics.dtsi   |   11 +
> > 
> > Separate patch for each file, please.
> > 
> 
> Why? We just told folks that we want the introduction of a new platform
> consolidated into 2-3 patches.
> And this would give us 6 small patches each one adding a trivial (and
> presumably incomplete) pmic files.

Oups, might've missed that memo then...

Though in this case the commit adds support to more than one platform, since
the PMICs are shared...

Anyway, please ignore my comment then.

> 
> What I don't know though is why we have pmh0104-glymur.dtsi and
> pmh0110-glymur.dtsi, why are these "-glymur" ones? And why do we have
> glymur-pmics.dtsi? The times we've done <soc>-pmic.dtsi, we've put all
> the pmics in that one file, not just 6 includes...

Yeah, this indeed doesn't make sense ...

