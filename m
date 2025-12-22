Return-Path: <devicetree+bounces-248758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3976CD57C5
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:11:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3537E300F629
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2243C3148CD;
	Mon, 22 Dec 2025 10:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T2pOedhn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I0c0Av+g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E6F313E3E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398284; cv=none; b=RidL56pySpzUaDDpyfumoptOHkwmtJFeIm2ycMPi6V3j1lzvTkeSJG61fL66VLUc3eH18UFw3yhtEYJKvUryWDZW9By0rkQpWcXL52mB+7PKlcbK3RqFuCYPntfsVpGW1aHZP1DCII+Z0VYgQClmK5MUGhYf8QsN7tQ7FmQKHA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398284; c=relaxed/simple;
	bh=6nEzGlpUVj1Rv1a+bKeOYGuJ64knxyEFoHZZ814na7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n7PlaeNmhy7AJrYD5oMQTo/rvRx3E3axTqrfPMYjX8ZhlcNFVvnFL47z2e2cmfwMSq6DtgcSiPL8+rMQngEAdcD87861cfxDNWrddfKrZSfzugV0m3ISiallcwuMSSavcS+wkT4WZIIaODS6S6C156NhnbRstZDQtiSNn9dhZPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T2pOedhn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I0c0Av+g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7rsfM3678875
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:11:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YHypJlQwZZu8LL+8Mm/KrbMDUzERPi3aY6spWVjTCx8=; b=T2pOedhnaptcd+ZF
	fv7qDQiwTlj6ixipoWbRdq/+n1sVs2S6IlqiDG2nbrUZDsRWsOyL+53j4TG4eIo1
	5SJ2T4gGGRORxbXPsV8mb717t5uAEXeUbs7CE3TF+N0aSrpTfzRM+qCx1OuFs/ww
	P7duHoK31pYQPiSYwtQh1MsGxfMoJer/BNuO9nFPU6exe1fE7F7B1+JKwKIbcjsa
	q2XCvp1OSaAEp/stJgYlBco2ZL7epMQoWJnCeWd3P2BUBoJBfMmiCiiFr2hzyhls
	KkMoF7TiPOJffylD92jd5FHCwR9mq5IMGlwuCr1/Vu9dakKB1r2+Jh69aqB/PDQt
	AgI8Lw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrtcmnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:11:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a9fb6fcc78so3409718b3a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766398281; x=1767003081; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YHypJlQwZZu8LL+8Mm/KrbMDUzERPi3aY6spWVjTCx8=;
        b=I0c0Av+g0Ws3K0ix+8wsocB/jJ9sxvLF7RhsBZ+KdFyuPNUB8ZDTzgjQpQT16SW5jD
         kBRQveYbui3aCsISsybjBdV9m7IkbTVjLlZkhp8E3Oc7R2l4tMMvMjmJ5K3ywI4V49Q3
         yoNCObeekRdu8CHG5qmgc37JiHnywbnks0gmNZf+R9SGee9kWk8ai2reXuBVqUtq7CDb
         bJ00G31TG3YbBP8VNsVEDXRld2/tGch+MSjoY8HQas3MKUgJwZaqOdCiC4CEVNhIeFr7
         BWb/bxpTgBYa9OqR1FU/q3hLAcLTmdmNZK5Ct27vO/fCSxSH4KFkNA9lcMqKh5zlYKp6
         FuKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398281; x=1767003081;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YHypJlQwZZu8LL+8Mm/KrbMDUzERPi3aY6spWVjTCx8=;
        b=wqE0eBIsigyShRfycjC7hzgcwicBzF/Vo9gBHCV0nSFdl7UjKf0cAs//jZYLIt0ey6
         hDAFngJUw7T/8dejTrTVy/jU1j7vLzNR0r8AvHujxAQFlF42tatMY4LHpz3jABsN1dkj
         ShN212FzJnGKJ4rJUt/xvN/EZfQVKjQYEL1eFcMf3mVYy4sTHn7twHuvzb6SGpI2LAiD
         +7ZSO7f3Da5s5WnHA3/rAC+hRA3DKPN5dkck/HKrH4iM06iuTHZiTdrPaP29L6loHGUJ
         BY44gV2fuvQiDYJYIMxcnmIagoHNoyQOh4LVwv/e6WhcZWdbTDjIIcSLNKbBEtMY1ODh
         0xVA==
X-Forwarded-Encrypted: i=1; AJvYcCXuWMAAWq0qwJW4WY5MMZoddL2wiyER5Gyc7f1lQE7n08GnV8oa5CwgvZdAkfUi+jHxhj26StDPdSJx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5LgcqvKF5jizDXHvT3UyhgrKnINWSLmMFDl522s65v2Dmc5RV
	AzcziWM//LulvUXhQgfEyh6/FZsXyPW8NFp7CxMeEZfZIVMeila8BdYXQOfZFa+0KjYxBJjk9op
	16piLDnQQ12r+vQTNKBIH1CrxOwhfXHMopWmLxke+o/vKyEbdeBjeQ7xMhQ8zwNe5
X-Gm-Gg: AY/fxX4Bbp9rwUTUGqLBSKbJUww0CAXuoKqvNoPV+NX3Z2uyWgcaCxNKjLx+IcICszV
	uLW2+p0qXXH9ZPAofYFTzXracF5FiwI9rZLOgFnJUeq7XU+48wgvcOkE6fOoutGrpFVrnuwbFwk
	j6npBAjH0CMOs3ly2brnxgdmvbowoev1XF7/mb+2I0ZhlawRu/JE+0+hxGNO2LWOj/AjchZfs+w
	HhMz0EzYq2mt6mfHkuaMwkuTQIo6wi7NatXDaacOvhtkimyj6KUVRN3rX6j+9Ldi0pf86V/+Z3H
	vQU1OLlE+c8UY7Fj9DqsQ9lpSZ3njMB77L8MUmhoQOyB6QtpzF7VK3rYq55M0FMaIeS08fw4JNq
	D0lbYGetXddkfraPnorwX7sVlBwHV7jE9ECg+yjw=
X-Received: by 2002:a05:6a20:748e:b0:361:4fa2:9757 with SMTP id adf61e73a8af0-376a9ccbab3mr9993578637.55.1766398280719;
        Mon, 22 Dec 2025 02:11:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGu3LBxDwGs0rYx8+Fs+WdQ0lnbkGkcW4M1/5kxQeL41sTSXUSkDxaTY9zeAmbRE8zygFT5Pw==
X-Received: by 2002:a05:6a20:748e:b0:361:4fa2:9757 with SMTP id adf61e73a8af0-376a9ccbab3mr9993545637.55.1766398280177;
        Mon, 22 Dec 2025 02:11:20 -0800 (PST)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c530f72sm8753709a12.29.2025.12.22.02.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:11:19 -0800 (PST)
Date: Mon, 22 Dec 2025 15:41:12 +0530
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
Message-ID: <20251222101112.aprpyfalend6jkhr@hu-kamalw-hyd.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 68J9hKTzVtpaatiz-Ev5B1ofSbKLJhGc
X-Proofpoint-GUID: 68J9hKTzVtpaatiz-Ev5B1ofSbKLJhGc
X-Authority-Analysis: v=2.4 cv=CeEFJbrl c=1 sm=1 tr=0 ts=69491949 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=re_HsZogAqmYq7xTWKEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5MiBTYWx0ZWRfX9dg2bGhkxp7E
 4RHKOksxdTuqUTEZWFNIDdxLJZsKDvx/O1IGi/Emo6az8UqlQD4BF5sb/tmSF1EeEgsBsENZLCZ
 BRoc9debnaZewm+VEb/Ssq3qq2H9N1jiTCcq2hmT8lyt6Bvpha/UxfxaWGUzMZbHD6BExYZHnw2
 tMBd0vsdKcfLcKIp6JgPdsXA22GgdFF8UtPwq962WLpkSiQOj7JsBFO466mO8sBklBhe+m/7vzL
 fIZpsAhmdXZss5j6Hj+nNCY4FWfGDuI9JPFFpheJTnGKanCpgaHwbZEw/866YSoCBOdWGppy2Hy
 QCGu/I5MgsUO6NG+PR33EBwUP7o4bPesflBSJXbKxA2aw6RGYE30sn0KRqwPxnQJ1QK9H1RtMnf
 0IeOwVteHE8veAiMI4GP773urDmjH2n0wPTlTzVhVLkWv++ZXlQmeqCqi1p3w76so97+6dmGNdY
 DLE8lE6Al0+aTiRkFCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220092

Hi Bjorn,

On Sun, Dec 21, 2025 at 09:36:19PM -0600, Bjorn Andersson wrote:
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
> 
> What I don't know though is why we have pmh0104-glymur.dtsi and
> pmh0110-glymur.dtsi, why are these "-glymur" ones? And why do we have
> glymur-pmics.dtsi? The times we've done <soc>-pmic.dtsi, we've put all
> the pmics in that one file, not just 6 includes...

Actually, we got this suggestion in the first series.
https://lore.kernel.org/all/b784387b-5744-422e-92f5-3d575a24d01c@kernel.org/ 
and at that time glymur-pmics.dtsi was still there.

Main reason for this was that Glymur has lot of PMICs and some of them are
as-is shared with Kaanapali (like pmk8850.dtsi & pmh0101.dtsi), and some have
been moved to different SID on Glymur (compared to Kaanapali) which needed the
-glymur.dtsi postfix and having the glymur-pmics.dtsi helps us in quickly
checking all that in one place.

We would prefer to have the pmic files seperate (then to have all in one
-pmics.dtsi) to get a clearer sense of the "leverage" between different chips.
In future too, we expect we will have lot of sharing of older pmic files in
future as well. So having seperate DT will be preferable for us.

That being said, if you want we can do away with the glymur-pmic.dtsi, and have
all the 6 includes directly in glymur-crd.dts? or if we can get a waiver? we
can keep the same approch ( having <soc>-pmics.dtsi and pmic.dtsi) going
forward on all future targets.

> 
> Regards,
> Bjorn
> 
> > Abel

Regards,
Kamal


