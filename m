Return-Path: <devicetree+bounces-260433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJX3ArEUemlS2QEAu9opvQ
	(envelope-from <devicetree+bounces-260433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:52:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 63288A251E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 578D3300AEE1
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D0335EDC1;
	Wed, 28 Jan 2026 13:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YfBBawZZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZLw5eay2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3667735F8C7
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608365; cv=pass; b=MKY+xrF8rGvig1kzZAQbUznNr2SNLy9wU+t2m1Vq6ib9txWTbxsVrNuPABJCfj2/ocRaPI4n1UeAAEh62DAFL4CepO2SgQADzJ0BY4TQB4V+DevuCjxhjWMnz4icPDlVF2426L47+JMc6GmKsP5m7Ns8c53QwtRzrEBarMsSbfo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608365; c=relaxed/simple;
	bh=Y93P93K94WqtqUA0rE0D/WPyc6jldcBts3ZVbQ+pVEM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dXi3TpxK1FoUBHuADnHtuTJs0z4mqZ7xD1VNfovjJYqK3Qmh8Fka25D/kC9kFmMhapupflu9PvgjAHW+VbOkzzhj7MDRmjCKKKdHdnZ5zyvCnUOMrZsG1wnhMgtkaskU/tIRXdZgW2wY+jEV130fwP+oV9TbFbXwKkZz4DZ1QAY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YfBBawZZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZLw5eay2; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91o4H3442311
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:52:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3Qu5/t4JMF8+TRz/2kOJ8aI/
	iXG514bygfwsHZf2oT8=; b=YfBBawZZcNthAaX6+S/ZFhLuDBZsDSi1vR/X/G3k
	PcTbcm+HOj22l7gY7OgQoUzsgjmv0GolXDjVfrK+9zhKAU24mEt3JoTvx4j+flM/
	FgZtjPrXwf/uTLlsGTS2Q9l5bUusEACov+62sRw+wBgSpDLTogG6X0shnjcn2I9g
	e8aQN03vqnvYMZ++I1+GMxKIUZ+CA8RrEYkipMBLrh+NIdaPjE74uxTX95ECON6q
	dehP5NnU4/RP8W5QXuj2cPz2pBZaG8RO2MfMpdxewZHE9LwpwwqfNNeOK8r4rCsV
	Y/9ti7yDFi/MA5GdNZS3/t3HmaE96EMCO3Dl+JdH7l2D0A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanahwya-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:52:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-353049e6047so5098788a91.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:52:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769608362; cv=none;
        d=google.com; s=arc-20240605;
        b=MlItfSzhVtNrGRXclmL4s9NEFAZu5DgD7XsRf6Yb9f1L2xBuQG+Ue2/ILzIw4KxLZc
         y15VT046URDj6YupdHsQAh9L6s3ClLKoH8mSg2oTiAtsmkIazVuAtcETMqyHS7SxrOGo
         uXCrMUMRCp9x5vmbziAqdOFBfaub/B/0+Tkl91bkDGVU24kwW7SrdaR3U5ZuM5G1Vz7r
         GbX//3Q44VKE7G/rkrTl9Wjo6ELl7xjAv9mgIPyJSlbqK/ik7nYHhTZOzyzplrCstKZD
         V01qKYOqtUidvEOrFRwxQi+3bf/ju18YLGtzjJl+omo52pGTFA6MdoTmZQ3EKrg6sg1O
         2lWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Qu5/t4JMF8+TRz/2kOJ8aI/iXG514bygfwsHZf2oT8=;
        fh=iT93rq7ib6UhvxKiWtaozNWxIH8C8BPOu2mrYeDD+Mg=;
        b=jrTyNQB/ioT4zQWcA3kI8llHVnFkvUcu3uJHsS6OibGgJt8CoPotBKBvIZ/c4oIvfW
         XRd1WHlTXH+Edra2h8d2ADtW9y+i66FdQtf2Aw45+IgG9UoSfvsiul6xpUzkHWbkFysQ
         /6Bffi4aJP3YG0UyIi8Y5P9QRrOh2PQsgD1nNxPdUSkWz/v1yunkLsuFemU2U/pRTWDR
         wlTnTsewt7hR4BWwaQvakNjoK2fB5BEdtqdBFcV9tZiWinkstYEObI7AoTadmkFc1MnR
         lC8r/E//YTy+gXXZkB7xKZs7I2qpgeUPjx0Q/xLDzbGdHXNXnc4dRdbkAkKBaOLrWXhu
         Ad9Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769608362; x=1770213162; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3Qu5/t4JMF8+TRz/2kOJ8aI/iXG514bygfwsHZf2oT8=;
        b=ZLw5eay21jczE9rXL08ntPo4LDl91rdlmxsz6IInrsPctEdUFamrIlSriYUxW4NZX2
         OBO7q758KCc6MBbdc2j3zzmYjfp6Io2l9ASIxyhcbVuYFzSTN7JJJj5F5SzIxWu8XylO
         vOhI/1sD5/fT50d8cBaYFk/DTHIIxlKXrlau9EDCV3eazHZMdgGq2a5LFm4Q/yYf4S2j
         Gj5SlYGnkwn5s36tCfgXBCT9SjTJjW3umAPsRd7a2RDQxgmyuA9CZZTjkfFzH81BXICX
         EvdNR1DY1OItoTMfHwoRl0yJyrvsWs9nPJTqNBLh+vA8bfEBqd9HovO61aywi6IiW6rw
         ZQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608362; x=1770213162;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Qu5/t4JMF8+TRz/2kOJ8aI/iXG514bygfwsHZf2oT8=;
        b=XikjQroRmxb8dnbsnrEmF/1BWGMcIoILTN7JNpdbK4GQevxBfc+bn2veJXGgplxWVE
         cC0XZpU0D5dbFvhelxnoRxcUsmQiH4ptO0gvH7SajpcVHXrgWOYFgBqWfvw6uyOynMYH
         2ioiG4j6kS5tI+moypUIgis3Zt9mzlIjhYNvpmEx9zu1acfIMx5uL+EGbrZjw9JA1Vx+
         Oi4rp7ppzRctxmEBLw/61Vg1ZLBrDe3UiPdzjaZX0OvkZpW7nufomSxGmOA1zuaiAt/w
         2uUcEeQ9GVSv6ekhgr1S3elenIXVrv5Bg+5v9zD1lROhWhCzAUgJd6xXYKpC92iMyIUa
         KcFw==
X-Forwarded-Encrypted: i=1; AJvYcCVLTq9kavIIq9Qw0Mfsze3q5J0AIeC4JJgur2+XGDE1CkCd7lLCORT1cGIV0mqVmyapW/WYgRMZWyxZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxOjuhLixLrgeQ4vfFCz3/JXkguuivcq66A7Hbf4pf0jijcjGWt
	7XrGuiIIqs2CpeoCIqGqgOSFgY8DGGlbdbDxlKlP8TpNdeObv8yN37uI5DXXGvDLZCLKDkHvhV+
	JAu1jiaHvOpczO5VYU85H2/hfvmH/JNZwghNHs9ARkMK3LiL1mw+AuBxf06t5oe/fMDWfBYR+xT
	QIAyRhXj/fDl580DfmVCrScR1/v++vkbKbgQ9SjEy+SaTDmhk=
X-Gm-Gg: AZuq6aJzXnKLnDSruo9jf85fKrZX9QJ3geNjcFXbP1VhwEKbXq3a2KPSONO3PO8JZGx
	x9vW91qiMjU3Iy76ABgq64Dcs9grQwhZjEVeGGPPgW+f8Q12KCSuhTtBZbMGka+OftvHO15KrS1
	2d0HsuIPVq2S/C20mc9OPnyripdgK+6+nALDu48G40KxsU/kyRpCLnxHWUIkImXZpNTg8Fi9ZyZ
	Wm9uc/n
X-Received: by 2002:a17:90a:e183:b0:32e:3c57:8a9e with SMTP id 98e67ed59e1d1-353fedae45emr4748319a91.35.1769608362329;
        Wed, 28 Jan 2026 05:52:42 -0800 (PST)
X-Received: by 2002:a17:90a:e183:b0:32e:3c57:8a9e with SMTP id
 98e67ed59e1d1-353fedae45emr4748296a91.35.1769608361830; Wed, 28 Jan 2026
 05:52:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120180052.1031231-1-morf3089@gmail.com> <20260120180052.1031231-4-morf3089@gmail.com>
 <afa20489-adaf-46bd-b3e7-c763aba5d7c9@oss.qualcomm.com> <ac83f41e-08ad-4ffe-9f0e-02f8256af65c@minlexx.ru>
 <f8097212-6388-4c4c-8f5d-a91df99a18c5@oss.qualcomm.com> <e6bcf45e-9eef-4660-8630-a7be1cbca61d@minlexx.ru>
 <kfjw3opjwwndocxqqjn4ya7sy575kpgo7otulsxqotznl5ctro@ewdaumkmstdk> <9980751b-3069-4a77-bc4c-0d5ce42305f6@oss.qualcomm.com>
In-Reply-To: <9980751b-3069-4a77-bc4c-0d5ce42305f6@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 15:52:29 +0200
X-Gm-Features: AZwV_QiekXIAfL_Qcoauq4fZOFUeAlEEifzxtb_8eK13VtWO7IT3Ge1V5nPZtYQ
Message-ID: <CAO9ioeXpKiqW8uEFAx80EmPrs_gnuvTtKws4EAGkqXTscXd2Aw@mail.gmail.com>
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sdm660-xiaomi-lavender: fix
 regulator and SD settings
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Alexey Minnekhanov <alexeymin@minlexx.ru>,
        Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robh@kernel.org, david@ixit.cz
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-GUID: Siyzh5EcnfQxy3ilFXQSppQWVEnhpk8Q
X-Proofpoint-ORIG-GUID: Siyzh5EcnfQxy3ilFXQSppQWVEnhpk8Q
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=697a14ab cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=rC6OpnOI0FKPR0jp5UQA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDExNCBTYWx0ZWRfX1wa3gsm7MsjU
 NaAoqQy0iuBkHluUmRC4P1p6JiyhzyY+OEzr/kAynyZK3I8D36ANESNW07NBSpaVrGJZulJBwRT
 mflhoNubb7n363Ez6w6s1KdMCf2s4trxYpXtDWvK/btBwoCx2GbQdvq2wAZ2KkK7oNLWnmpXljD
 r/CR/URl7b/sD+mpq4huMdTIcTpfufqXo29UPK26FvNJSMj+Y6Br6ruK4mapmkhjSmDWJjRVfsI
 xH5MXd8jK6jxZ84M9FtcHDtCHbEHq04LY57zkqLv6/IYdnL9RqjIJ99+SFGPUBLNJBkrIpQAfV7
 eyTB8BiQ0eebpnrCRTRTCFy6q8H0nl+be6MgfFAWlMYuFvz2XQVWvlxkScULSdMEhOM5OBeXj5O
 Q02dLvyS9yt9H5RAbN0wvugFPcAda+hHZTfmuNjbcIj4jYn0JGQT3N3B98C1iIRwaL69IjGlomZ
 eSItKvpue7DW05VtbLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280114
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[minlexx.ru,gmail.com,vger.kernel.org,kernel.org,ixit.cz];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260433-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: 63288A251E
X-Rspamd-Action: no action

On Wed, 28 Jan 2026 at 15:24, Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 1/25/26 12:10 PM, Dmitry Baryshkov wrote:
> > On Fri, Jan 23, 2026 at 11:11:50PM +0300, Alexey Minnekhanov wrote:
> >> On 23.01.2026 12:26, Konrad Dybcio wrote:
> >>> On 1/22/26 5:44 PM, Alexey Minnekhanov wrote:
> >>>> On 21.01.2026 14:27, Konrad Dybcio wrote:
> >>>>> On 1/20/26 7:00 PM, Gianluca Boiano wrote:
> >>>>>> Fix regulator configurations to ensure stable operation:
> >>>>>> - vreg_l10a_1p8: Add regulator-system-load of 14000uA for proper USB PHY
> >>>>>>     PLL operation
> >>>>>
> >>>>> The driver needs to be fixed instead, as it should perform a
> >>>>> regulator_set_load()
> >>>>
> >>>>
> >>>> Also change done by me in [1] with more detailed explanation:
> >>>>
> >>>> Since the commit f05ab10 ("arm64: dts: qcom: sdm660-lavender:
> >>>> Add missing USB phy supply") previously untouched by Linux regulator
> >>>> l10a is now used, but it exposed a bug from initial porting: when
> >>>> booting with USB cable inserted, or booting without cable and
> >>>> inserting it later, board reboots.
> >>>
> >>> FYI this shouldn't be required with the upstream driver, I don't think
> >>> the core calls .set_load(0) and RPM isn't notified of a current
> >>> requirement change unless that happens (qcom_smd-regulator.c)
> >>>
> >>> In the power grid, I see (current values representing the peak):
> >>>
> >>> -- USB2
> >>> VDDA (3.1 V - vdda-phy-dpdm-supply) - 60mA
> >>> VDDA (1.8 V - vdda-pll-supply) - 30mA
> >>>
> >>> VDD (?) - 11.4 mA
> >>> VDDA_DVDD (?) - 35 mA
> >>>
> >>> -- USB3
> >>> VDDA (1.8 V) - 14 mA
> >>> VDDA_CORE - 68.6 mA
> >>>
> >>> +Dmitry poked at 660 in the past
> >>>
> >>> Konrad
> >>>
> >>
> >> This is not needed e.g on sdm630-sony-nile-pioneer, it's booting fine
> >> without system-load with USB cable inserted. Maybe IFC board doesn't
> >> require this too. Seems to be xiaomi specific thing again?
> >>
> >> Alternative is to not touch L10A regulator (comment out vdda-pll-supply
> >> from qusb2phy0 node and face the "phy@c012000: 'vdda-pll-supply' is a
> >> required property" dtbs-check error again. Which we don't want to do of
> >> course. And schematics say that vreg_l10a_1p8 is connected to at least:
> >> VDD_USB1_HS_1P8, VDD_USB2_HS_1P8, QFPROM_PRG, VDDA_APC1_CS_1P8, VDD_PLL2_1,
> >> VDD_PLL2_2.
> >
> > It might be that there is an issue because of it being used for APC1
> > too. I don't observe any issues on my IFC6560 board (where it is also
> > connected to APC1).
>
> Wait, what? The same line going to external ports and the CPU supply!?

Yes

>
> > I'd suggest adding a dummy fixed regulator node as L10A and documenting
> > that it is not to be touched by Linux on this device). We do this for
> > some other "system" regulators on other devices.
>
> I think that system-load may be fitting, but it needs a comment

I assume, it might be RPM killing access to the system regulator.

-- 
With best wishes
Dmitry

