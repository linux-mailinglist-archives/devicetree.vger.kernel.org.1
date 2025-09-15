Return-Path: <devicetree+bounces-217413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AB3B579B6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 14:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23ED67A8481
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C615930216B;
	Mon, 15 Sep 2025 12:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="moxlKa93"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8E429D28F
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757937742; cv=none; b=O4uZHFrYhXKrnbMrorMGUdK5FuUpQ480+KIv5itb1eN30pXKkdSX1SuT6z+vmKPDHwlWInMtcTRa3C1hptwydXqotlasYVByAfR7N1LM4pu1YB9fmI34FGCXVMjG54KgVC2aWqTSn/YKE6WuyHwCD3FZx90Gbs45e5piIDfEUs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757937742; c=relaxed/simple;
	bh=Oo7O6bPRLLD3MAqlBMumXDbiGCVKFewvPrd138/93zY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GyW81Y4JrHdvBQee7nml+X0GVb0VHwDuyDGp1KbDMoD3qNXo5IfD/ESttoTvnjWkFv91pJ74A6y7YaUZW8LWOXIkedJlJ9l0UjyycjWRxCEf+tFmaquU95dREDjXLKzG1LbTnqcKAbLmfl80Le87EfY6JVwxf+zJDHys6/pDJ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=moxlKa93; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F9QvNa022205
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:02:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IvAeXnBrUm3WtAxyNHUahdmztvfLEqQROq3blJbaPBE=; b=moxlKa93gMoU+EA+
	pPc8xR2QA7jLN4py33tSgd6PAQWu3exrp2osAqFc4rJh4hH3YVUl7p8Kd/06k6yf
	RUjEH/fMsY4C1A37rD4e8YJ/BfpqADJtaPT0wS2XQlvPp3yqLExlzDM/1lYUebxd
	z3hgvQQCpvp8RoVhF8/pYmeXr9h4+TY0U2WYlHB1Gyrpmuo57xcKt5u7LW8Jxr89
	1skN0wqWQkD8ydd0gnHU1xmQEW2V+K/ALZIdB4FleK/ZufdxfqIyeN6n779bczUT
	ZSk/Rn3YXBCr2p0pCjPWect+5M7WedM4awVW6QV32zvoeMQGySTYzCAeKTtJuK5D
	EXXoPw==
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com [209.85.166.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n0e3a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 12:02:19 +0000 (GMT)
Received: by mail-io1-f71.google.com with SMTP id ca18e2360f4ac-8877b84553dso445245239f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 05:02:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757937738; x=1758542538;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IvAeXnBrUm3WtAxyNHUahdmztvfLEqQROq3blJbaPBE=;
        b=Gv3gHPUgqn6ooIOnFdaDOeF4Yjt5Z34QRGq4bfnI5SsbWvvdqJr6VYSVRB1T5TYyb8
         oCU7QzjkXOKca1E44LxJ9BMpVwdE5dSMapw56OV46a9mUAXTO7OPnPW/6iXbi9GH6tZC
         2/QXRwxirb+tsbgndO2O7kfvBiXV3Anj4tnXg3u1vBorhhvsfZ9eZHBQd5X27q0bG3KW
         dpVfhdXrhEYw17d2UOljjzhHFQtjRMv+d9AvZ/yNXplG06l88VSlrV3HZ6rNgHFOn7FA
         jdQnA9dOltOhHbvXcuOF5VsQq5Ui+pwT1arhXuSnYhS/LL9KrUk166Dmfp8U5lGPQ4qH
         aJSw==
X-Forwarded-Encrypted: i=1; AJvYcCVv3DDd1c3EPgT4Y2aLdCiEfdTwI1xgKlQCoKigu7MmKqwZX5uXrTAFq4KmqvyXjKsGHDghjB/bEhgQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwfECA3JjhFSQnAKLz1xIGztKkETG+Lo0Nmyi5uiEzfzQw1o8h8
	Tz3eB/qxBMJCaY5/jHw8cmyF9iIODp1VNQrd70acp2A7+qvv7GbAJ/AL+gRx+f6EWLFtI6xMY0s
	aOL6c1E/PfclRlBGDWAzheZKxqJva8Fd0I73oOupEkDqbTutEKY9MnUeL0OagipWk
X-Gm-Gg: ASbGnctlVmm1LwoMSfBZclHxCrkuxZtut2n3OX32DwP4MI5h7wEPUl5vGrvUkNmPruV
	yTkHOVu0npT0JhIcO1UXM2ggoPpzYXqDGP46ECVuG7l8fqaEVCt4JX0QcMHC+zi3NFEWUmn+6sp
	HbmQcsdXLi7+oucz5olzdcTw5krleyBNgZvvnWfpXWxNE55/jEIwJRicrwqoJM5ozKxcdBibU5e
	xneGK+V+adzhBqXPXViVDmbF03GkCsGWVOwtgnt/Jh0szYp3P7/FPTg0GsBIG21x/NdmKxlHyjX
	TfbJluIM6OdEdp4hAMuMAxjNzL9xTk/qcfmJD71PPBLHfUIiwcKbXLB4ZC4M6ttzumi1C+B0SqE
	H27LFQDBOI2XsLiRe45AzTJGxYBT//JUvTuNNOVum37m/knPGCjkq
X-Received: by 2002:a05:6e02:3805:b0:424:db:3f52 with SMTP id e9e14a558f8ab-42400db43c7mr31984365ab.30.1757937737588;
        Mon, 15 Sep 2025 05:02:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwSFZp4+rn504zHIkvMkDte9o/xIPIokYa2nEOEEH2hcptgXuwuAlyF+4kk8sIPNl3j0f/aA==
X-Received: by 2002:a05:6e02:3805:b0:424:db:3f52 with SMTP id e9e14a558f8ab-42400db43c7mr31983785ab.30.1757937736970;
        Mon, 15 Sep 2025 05:02:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-353725e1bc6sm19307291fa.27.2025.09.15.05.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 05:02:15 -0700 (PDT)
Date: Mon, 15 Sep 2025 15:02:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 07/13] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Message-ID: <yvhj3blwga7dkc2cr5prc7covfcw5lrg56fptynn2j3pbmtrk3@el4qlbecbg2o>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-7-2702bdda14ed@oss.qualcomm.com>
 <sy4kyh3kd6s4nr75unt5r6gxnyeqq6bfjj4tizwiw2fvbw4ala@i3theqmwiv3d>
 <1741620e-1f92-4db9-8135-965a96f12590@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1741620e-1f92-4db9-8135-965a96f12590@oss.qualcomm.com>
X-Proofpoint-GUID: YhphljFLUME1KAQnv2nLw4QrVgNmQuh0
X-Proofpoint-ORIG-GUID: YhphljFLUME1KAQnv2nLw4QrVgNmQuh0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX9T37PaomSuxA
 fBHJk9SC+tBQIwKIP63eL9rdM4AycRqgUrn7WDN7CCnVoQ9dgAmJXhYkKvY2iPN16XJujFgXBSH
 /CmXCbqVEUET9V7uq1+HJVFqSLxzpKeqm9Hjv+EoNq8d3QJpr4DM0OGrJ4R0r/ij7GNCumBRCE1
 V8/XOSR9wWkVtuFQOSfxF7TGoHAB1CvBHbCCha82MDfIqZx3q/I+e+7L6e/UwSDJjiPOxflnfUh
 24rGECp6sv5aYm1kVx7ANlDKeskIDjiwjLjZYWPA/dIfRMEM7db3DqldhrxWohpFz0nOaaoqV6l
 kYc9IP3CKcKpit3CFENlMOIAKmHrKWeeoFDwgEoD4N/QWcAlBc+nPE77hIt8yUEWY6oFlv+2SJO
 AGbXzJOl
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c8004b cx=c_pps
 a=WjJghted8nQMc6PJgwfwjA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gzlAuExvAKsCTSaEeBUA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=CtjknkDrmJZAHT7xvMyn:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087

On Mon, Sep 15, 2025 at 07:29:08PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 6:12 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 10:55:04PM +0800, Xiangxu Yin wrote:
> >> Introduce DisplayPort PHY configuration routines for QCS615, including
> >> aux channel setup, lane control, voltage swing tuning, clock config and
> >> calibration. These callbacks are registered via qmp_phy_cfg to enable DP
> >> mode on USB/DP switchable Type-C PHYs.
> >>
> >> Add register define for QMP_DP_PHY_V2 series.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h |  21 +++
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 251 ++++++++++++++++++++++++++
> >>  2 files changed, 272 insertions(+)
> >>
> >> +static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp)
> >> +{
> >> +	static const u8 cfg1_settings[] = {0x13, 0x23, 0x1d};
> > Are these the actual values or is it a C&P from the combo PHY?
> 
> 
> These configurations are the same as those in combo, and I have compared
> that they match the downstream sm6150 project configuration.

Let's keep them as is, thanks for the confirmation that you checked it
against the vendor kernel.

> 
> From hardware programing guide, only defined AUX sequance with 
> DP_PHY_PD_CTL set to 0x3d and DP_PHY_AUX_CFG1 set to 0x13.
> 
> Shall I update table to {0x13} only?
> 
> 
> >> +	u8 val;
> >> +
> >> +	qmp->dp_aux_cfg++;
> >> +	qmp->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
> >> +	val = cfg1_settings[qmp->dp_aux_cfg];
> >> +
> >> +	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  static int qmp_usbc_usb_power_on(struct phy *phy)
> >>  {
> >>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);
> >>
> >> -- 
> >> 2.34.1
> >>

-- 
With best wishes
Dmitry

