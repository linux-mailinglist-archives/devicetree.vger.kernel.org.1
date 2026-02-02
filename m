Return-Path: <devicetree+bounces-261623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB0KKlM0gGmu4QIAu9opvQ
	(envelope-from <devicetree+bounces-261623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:21:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B33AC8496
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 06:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46F8330053E1
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 05:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E3A25BEE8;
	Mon,  2 Feb 2026 05:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IVS7e9aG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GXvP15rt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759841BCA1C
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 05:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770009674; cv=none; b=mSoiM//bilhu0IS0sSYpxvk7mr3i8dyVUtwYSs+gnO6hkXhiVFhGykI6xE6TCtcqWdKPYVBiDodQuo1Sgx1V3HBzFgdUPjTxKeSwvvcr/gX5tsB2H29R2vzppj04wH1DAO2bLrhsFuafbLbKDDKNu7SzTva0NeOvISFZFbfbBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770009674; c=relaxed/simple;
	bh=te9FD4rB0oMU66Wb6pIxkNpWX6WJJIYc5S/vXfkEItI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUQpc3DAypdbvmWRh/sN6llWfvE7H2P4XlMLIR26iNJU3CO9wrben9+3992q/K959IA4/PupiHdPCnPyXvELvtoUgRRrcd6AZooez5jbicTYA8HR1OjUFDCnDdlMLyxEPWMOueARmm2Q23dlC75a1UcnVJQ4E2qI8yNW09FNaQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IVS7e9aG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GXvP15rt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611MKZHM1642240
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 05:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=avkyNtH/SaAbcSwWAILRO3xA
	KrigdZRlCz9IqkfyLOY=; b=IVS7e9aGKBQWgdY+Wtgpxx/ffzcvYA5Rqxb7rz9x
	Vn9SNZc3PZDozgXEZTicTwAvMS+v16KJxq+fWc6v7+Qs9tOwjqi9HHqgsJ73AlsP
	0mVdapeTRVU1mp0JtP7xYHG/20VGYPXm6x59iOoclWvmdnwrKLJRoXPiBkUe12cc
	HqWDZdbmHa4fKmEjjDaFZ6SWlwqRoBjGCf63PVszrDFguXbTsCztkfZwQhDtpQgN
	o5/8H5h7Wx//KhVPNt6Fq3eqN1dPEm3KQ2l9xzHvbkfnmSswHFGWzoGGU46ynSWN
	UsRsC0KwoyRnAzd2M6tIXyu5LSRteB4d0TOb1FN0MNFzfw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1hp6h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 05:21:12 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b7a28264c1so6780216eec.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 21:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770009671; x=1770614471; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=avkyNtH/SaAbcSwWAILRO3xAKrigdZRlCz9IqkfyLOY=;
        b=GXvP15rt5JXV0RXGiNo68D8H7BhHTTufpVsE1IrZsI2kYnuo7TII76F52ujsAJsFUb
         BQnoR782rFO/zSUpSowQZqbKdE9JIZEl1/hmaqFhtibDVPPMeRIiwdTWdchLajhm9+3a
         c4DOhDcaMd2xV5HDZSVZZ/C9LZ6hn5TBkkqBdBIYI1p3gDmpbKuR3uthxz0Lt/OD7VmU
         vgdrsznu6Tnl404rdclbFdPugWs1IPvyrWyIkuI0jxYPt0rHJhoGYTosAqB8e+DcqXYE
         Mqz4P6iEZqfnrpRAXkYuw0cgnJGpIju3ymjmE5DAECZCvha0kxUBFMDdBj7Jrya3JOw4
         xWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770009671; x=1770614471;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=avkyNtH/SaAbcSwWAILRO3xAKrigdZRlCz9IqkfyLOY=;
        b=gwCA8Lpb3TuWpmKaD/Bqn1Mrpdv38VtI/BSDByTxI8YGPxAW6ktsPlAWZajseYPiB/
         4Q4glhwK+uWM2zwwml6j9bx3jHxcf0YofCq6iFL8IMrN5UzWZj8/bq17V1j8VFOJEhUK
         QHu++UjHHxBFo1H+u89A0PytjeeTYALFgOcsg65prq5gSzHmympSvZ3PbmUZqi9Svy4N
         qSk6jrhYJoCw2cWMs7H/GkQ9Y+2ubb+sbFGJ1LsM5vlAPnbSm4wZNVy3U4D/pjx94wa3
         trSq+KFWhgqdirxpHeq0pCf+diK/ioeyEJqNKu59MS1r99RQ+B6mKXP01NPzJNzmH6zJ
         rw6g==
X-Forwarded-Encrypted: i=1; AJvYcCWK9c5+IJKTnO2DxRvdqdmAn4sMSf+FcU3MzPRCnw85xjGtINCTIPnR2Xr+7D66gCWUNRDCkWidOn4d@vger.kernel.org
X-Gm-Message-State: AOJu0YyaZYXNH/OnV/g86DMCnf7AAxvKLwkFWPCM2eqtuaz3LT/b+D7K
	zjZWpKhUvH64ckntTkc6qlGd/xWaWKqFTtrPn1q7yRye+/RXoQj3+PhAPVU95EXHY4bqC0yTMoM
	atd4yEcy+umH2HEa0YN/j4575x9LrntMBcrkySECpMGcgdxwNTJIjsVhD3tnX23N783norgvyL+
	g=
X-Gm-Gg: AZuq6aJpeQgF1GjoUzC9GnUp1R4vy2OifNv//E/PmIMnhRdq2TdCAb3OJ6Ye/aor0x/
	FSHlybaa9A0f9lZPnjfPwGTyQ/G9d7/QBVoyJFg2/MqLdAJ1pfUMWLCDtUCmcYiSioN2U7c/iKY
	/o2HlYJznY6ebm/JSNToLzmEUxZuMotZNDZWTZdv1jhZJRLyfn0XF3I+9HPHk6JIbUBtwxZKGBW
	w8xQgTStIQSoAK3UU2jXxM5Qs4K4KkQHj5U9bWlgIhGCGz5V0EAgW4k1UypLDcfZa4rwwWgWGPB
	Rm2R4TqP7ir0uQE8kRagA9Rwr8rNPe/yAnTJ72Vw7SlJptHruaElzJOBzBJKq8/evqR2bqSSL3a
	bwDC5Pflj0WOu10X0LDUidvuMPiF0sW6/m9SoX+zsQiBplna8o4da/xHM
X-Received: by 2002:a05:7300:cac8:b0:2a4:3593:c7d3 with SMTP id 5a478bee46e88-2b7c866c83amr5085436eec.19.1770009671068;
        Sun, 01 Feb 2026 21:21:11 -0800 (PST)
X-Received: by 2002:a05:7300:cac8:b0:2a4:3593:c7d3 with SMTP id 5a478bee46e88-2b7c866c83amr5085418eec.19.1770009670416;
        Sun, 01 Feb 2026 21:21:10 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16cf8f2sm20996442eec.7.2026.02.01.21.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 21:21:09 -0800 (PST)
Date: Sun, 1 Feb 2026 21:21:08 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v6 0/4] arm64: dts: qcom: Introduce Glymur SoC dtsi and
 Glymur CRD dts
Message-ID: <aYA0RBA9FjNmP8Ui@hu-qianyu-lv.qualcomm.com>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <75lzykd37zdvrks5i2bb4zb2yzjtm25kv3hegmikndkbr772mz@w2ykff3ny45u>
 <aXtM9vE9y73vnVeA@hu-qianyu-lv.qualcomm.com>
 <6d2b92d0-55bb-4ce0-ad5e-316210a3d2c5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6d2b92d0-55bb-4ce0-ad5e-316210a3d2c5@oss.qualcomm.com>
X-Proofpoint-GUID: 5XIelie2RdK66kQSEek-LwxtxZjZR7sI
X-Proofpoint-ORIG-GUID: 5XIelie2RdK66kQSEek-LwxtxZjZR7sI
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=69803448 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=qC_FGOx9AAAA:8
 a=gEfo2CItAAAA:8 a=LtUyV6W0DBWilpilEP8A:9 a=CjuIK1q_8ugA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22 a=fsdK_YakeE02zTmptMdW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA0MyBTYWx0ZWRfX58+uwsAdHGkL
 Hy7K9Aj9j9m9J4P027C1ZTq7T231ISbbFKdkxztxtM1+jHZ7MHtwYfyGnI5IX1GcX0zMPs8+XBj
 ha1/dncXexs6n1mKPfdRVm+0u+TSjhmg+Gpz1n8iEUEqAAMmYTeSKzQFoO0issOmAwNaZeDq+G/
 zHkgBfYK2w4DhVs7oz+7l0PHzPXqL9OTIwgstJRk+ribioYs5KxeAjA3oK0I5mg9FMGrirx1RRk
 HJAvLltJxGHKNzKDeLicJqIDbVw8+XJ/6LO9rwkPuzZMG2hP75fqNREDnmRsT/t/vVPUOGDq5Ib
 zGa65P5lie/K+3HFk5wtW1vnvCFJHlXzAhWGHzd2Axn39NcaS10tT9pkj/OIWWi7CQccLuNXuIZ
 fVPRWz7VVMBwtz9W6Kb2o9ngYSPbuYR1sQLNRfUR+Y9djPIuL7CzVvUkJU7vaRRzsHdf0L3rIq5
 lmCp/xpfyPrNTQbNpOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_01,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020043
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261623-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codelinaro.org:url,0.0.0.1:email,0.0.0.0:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.12.53.0:email,hu-qianyu-lv.qualcomm.com:mid,ee00:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B33AC8496
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 01:07:08PM +0100, Konrad Dybcio wrote:
> On 1/29/26 1:05 PM, Qiang Yu wrote:
> > On Wed, Jan 28, 2026 at 07:21:04PM -0600, Bjorn Andersson wrote:
> >> On Thu, Jan 22, 2026 at 08:53:57PM +0530, Pankaj Patil wrote:
> >>> Introduce dt-bindings and initial device tree support for Glymur,
> >>> Qualcomm's next-generation compute SoC and it's associated
> >>> Compute Reference Device (CRD) platform.
> >>>
> >>> https://www.qualcomm.com/products/mobile/snapdragon/laptops-and-tablets/snapdragon-x2-elite
> >>> https://www.qualcomm.com/news/releases/2025/09/new-snapdragon-x2-elite-extreme-and-snapdragon-x2-elite-are-the-
> >>>
> >>> The base support enables booting to shell with rootfs on NVMe,
> >>> demonstrating functionality for PCIe and NVMe subsystems.
> >>> DCVS is also enabled, allowing dynamic frequency scaling for the CPUs.
> >>> TSENS (Thermal Sensors) enabled for monitoring SoC temperature and
> >>> thermal management. The platform is capable of booting kernel at EL2
> >>> with kvm-unit tests performed on it for sanity.
> >>>
> >>> Added dtsi files for the PMIC's enabled PMH0101, PMK8850, PMCX0102,
> >>> SMB2370, PMH0104, PMH0110 along with temp-alarm and GPIO nodeS.
> >>>
> >>> For CPU compatible naming, there is one discussion which is not specific
> >>> to Glymur, Kaanapali and Glymur use the same Oryon cores.
> >>> https://lore.kernel.org/all/20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com/
> >>> We've kept the "qcom,oryon" compatible
> >>>
> >>> Features enabled in this patchset:
> >>> 1. NVMe storage support
> >>> 2. PCIe controller and PCIe PHY
> >>> 3. RPMH Regulators
> >>> 4. Clocks and reset controllers - GCC, TCSRCC, DISPCC, RPMHCC
> >>> 5. Interrupt controller
> >>> 6. TLMM (Top-Level Mode Multiplexer)
> >>> 7. QUP Block
> >>> 8. Reserved memory regions
> >>> 9. PMIC support with regulators
> >>> 10. CPU Power Domains
> >>> 11. TSENS (Thermal Sensors)
> >>> 12. DCVS: CPU DCVS with scmi perf protocol
> >>>
> >>> Dependencies:
> >>>
> >>> dt-bindings:
> >>> 1. https://lore.kernel.org/all/20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com/
> >>> 2. https://lore.kernel.org/all/20251215-knp-pmic-leds-v3-2-5e583f68b0e5@oss.qualcomm.com/
> >>> 3. https://lore.kernel.org/all/20260121110828.2267061-1-pankaj.patil@oss.qualcomm.com/
> >>> 4. https://lore.kernel.org/all/20260111155234.5829-1-pankaj.patil@oss.qualcomm.com/
> >>>
> >>> Linux-next based tree with Glymur patches is available at:
> >>> https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/b4/v6_glymur_introduction
> >>>
> >>
> >> FWIW, I applied these patches onto next-20260128 to see if things has
> >> improved since Rob's report and I get:
> >>
> >> $ make qcom/glymur-crd.dtb CHECK_DTBS=1
> >>   DTC [C] arch/arm64/boot/dts/qcom/glymur-crd.dtb
> >> qcom/glymur-crd.dtb: dma-controller@800000 (qcom,glymur-gpi-dma): interrupts: [[0, 588, 4], [0, 589, 4], [0, 590, 4], [0, 591, 4], [0, 592, 4], [0, 593, 4], [0, 594, 4], [0, 595, 4], [0, 596, 4], [0, 597, 4], [0, 598, 4], [0, 599, 4], [2, 129, 4], [2, 130, 4], [2, 131, 4], [2, 132, 4]] is too long
> >>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> >> qcom/glymur-crd.dtb: dma-controller@a00000 (qcom,glymur-gpi-dma): interrupts: [[0, 279, 4], [0, 280, 4], [0, 281, 4], [0, 282, 4], [0, 283, 4], [0, 284, 4], [0, 293, 4], [0, 294, 4], [0, 295, 4], [0, 296, 4], [0, 297, 4], [0, 298, 4], [2, 124, 4], [2, 125, 4], [2, 126, 4], [2, 127, 4]] is too long
> >>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> >> qcom/glymur-crd.dtb: dma-controller@b00000 (qcom,glymur-gpi-dma): interrupts: [[2, 76, 4], [2, 77, 4], [2, 78, 4], [2, 79, 4], [2, 80, 4], [2, 81, 4], [2, 82, 4], [2, 83, 4], [2, 84, 4], [2, 85, 4], [2, 86, 4], [2, 87, 4], [2, 88, 4], [2, 89, 4], [2, 90, 4], [2, 91, 4]] is too long
> >>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> >> qcom/glymur-crd.dtb: pmic@1 (qcom,pmh0101): led-controller@ee00:compatible:0: 'qcom,pmh0101-flash-led' is not one of ['qcom,pm6150l-flash-led', 'qcom,pm660l-flash-led', 'qcom,pm7550-flash-led', 'qcom,pm8150c-flash-led', 'qcom,pm8150l-flash-led', 'qcom,pm8350c-flash-led', 'qcom,pm8550-flash-led', 'qcom,pmi8998-flash-led']
> >>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> >> qcom/glymur-crd.dtb: pmic@1 (qcom,pmh0101): pwm:compatible: 'oneOf' conditional failed, one must be fixed:
> >>         ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm'] is too long
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm660l-lpg', 'qcom,pm8150b-lpg', 'qcom,pm8150l-lpg', 'qcom,pm8350c-pwm', 'qcom,pm8916-pwm', 'qcom,pm8941-lpg', 'qcom,pm8994-lpg', 'qcom,pmc8180c-lpg', 'qcom,pmi632-lpg', 'qcom,pmi8950-pwm', 'qcom,pmi8994-lpg', 'qcom,pmi8998-lpg', 'qcom,pmk8550-pwm']
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm6150l-lpg']
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8550-pwm']
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8937-pwm']
> >>         'qcom,pm8150l-lpg' was expected
> >>         'qcom,pm8916-pwm' was expected
> >>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> >> qcom/glymur-crd.dtb: led-controller@ee00 (qcom,pmh0101-flash-led): compatible:0: 'qcom,pmh0101-flash-led' is not one of ['qcom,pm6150l-flash-led', 'qcom,pm660l-flash-led', 'qcom,pm7550-flash-led', 'qcom,pm8150c-flash-led', 'qcom,pm8150l-flash-led', 'qcom,pm8350c-flash-led', 'qcom,pm8550-flash-led', 'qcom,pmi8998-flash-led']
> >>         from schema $id: http://devicetree.org/schemas/leds/qcom,spmi-flash-led.yaml#
> >> qcom/glymur-crd.dtb: /soc@0/arbiter@c400000/spmi@c426000/pmic@1/led-controller@ee00: failed to match any schema with compatible: ['qcom,pmh0101-flash-led', 'qcom,spmi-flash-led']
> >> qcom/glymur-crd.dtb: pwm (qcom,pmh0101-pwm): compatible: 'oneOf' conditional failed, one must be fixed:
> >>         ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm'] is too long
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm660l-lpg', 'qcom,pm8150b-lpg', 'qcom,pm8150l-lpg', 'qcom,pm8350c-pwm', 'qcom,pm8916-pwm', 'qcom,pm8941-lpg', 'qcom,pm8994-lpg', 'qcom,pmc8180c-lpg', 'qcom,pmi632-lpg', 'qcom,pmi8950-pwm', 'qcom,pmi8994-lpg', 'qcom,pmi8998-lpg', 'qcom,pmk8550-pwm']
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm6150l-lpg']
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8550-pwm']
> >>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8937-pwm']
> >>         'qcom,pm8150l-lpg' was expected
> >>         'qcom,pm8916-pwm' was expected
> >>         from schema $id: http://devicetree.org/schemas/leds/leds-qcom-lpg.yaml#
> >> qcom/glymur-crd.dtb: /soc@0/arbiter@c400000/spmi@c426000/pmic@1/pwm: failed to match any schema with compatible: ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm']
> >>
> >> So, we're still missing a few dependencies.
> >>
> >>
> >> Booting the system I get a ton of errors from PCIe in the kernel log:
> >>
> >> debugfs: 'opp:5000000' already exists in 'soc@0-1c00000.pci'
> >>
> >> # dmesg | grep -E 'debugfs: .+ already exists' |wc -l
> >> 508
> >>
> >> The system does eventually boot, and I was happy to see that we do end
> >> up finding the PCIe devices after all.
> >>
> > I enabled dynamic debug logs and observed that each PCIe platform device
> > probe was deferred approximately 10 times. The probe deferrals resulted in
> > additional OPP debugfs warnings being printed.
> > 
> > The PCIe platform device probe was deferred because the PHY driver was not
> > ready - either because the PHY driver was not yet loaded, or because the
> > PHY driver's own probe was also deferred due to its dependency (e.g.,
> > 1fd5000.clock-controller) not being ready. This is normal behavior,
> > correct? I also observed that other driver probes were deferred.
> > 
> > But I'm not sure why there are more than 300 times probe deferrals on
> > your setup.
> 
> I think Bjorn is trying to say that the driver is wrong, because it
> effectively seems to call devm_pm_opp_of_add_table repeatedly
>
Okay, to avoid PCIe driver probe deferrals and the resulting increased OPP
debugfs warnings caused by these deferrals, we plan to move the PHY
properties back from the root port node to the controller device tree
node.

- Qiang Yu

> Konrad

