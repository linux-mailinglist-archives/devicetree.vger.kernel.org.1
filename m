Return-Path: <devicetree+bounces-261728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGRaJTB8gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:28:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C87CAE58
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:27:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C884E30238ED
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 578E43587BD;
	Mon,  2 Feb 2026 10:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LpsIi00D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CkgQD+RE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABC5357738
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027692; cv=none; b=eWkppvyssoryzYLzWFk4HE4MutxOLfpEwwzDj4LNCFxF7Ba4ZoXCT7D+dZecZRo8yM3COhtme0o/k6h0fu6pqzY55kcn0S2vWwfSpGdzS0H+DltALQCxavBgQhTANuAm/6OEJ08Zf9qIsxognahivA1QJMStrlPpT+w+aiodP1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027692; c=relaxed/simple;
	bh=QKv0KYdq0atMMHTWQfS5DhoHhYTNYzOprhc76wfOslQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QRFQ2rLDFcSUSZtnamRhzI2sgvDXqb1yooHoSkydWl5v+9bGXgMx9vx6i9Wh0RN31AaL8AXCTY2+FDivEaGt0XwU+2IQrf33J0POvkP3R7qdqP1WbfYozNs5Kmegl3sxy3kBll4Wehr//lkZNAYjYDpJ3mzuqwsMIN+zKkyBeKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LpsIi00D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CkgQD+RE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61285k3M1377584
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:21:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2bsXukv11YhTkDBlYKoW8C2K
	jNjVjIRIsMzLs+8SGE4=; b=LpsIi00DAgojA23hJrN35Gkt9l7O8U21h1O220F1
	ULaj+YkgxxGsMN3m1mdyNoajNIrqPAlzRqRPgCtRAzVzADgo6y3DxDYe8yfWA7bo
	kWVpuIbfnK388sYJKSZy2zC/fhZnUt7fOsjR8M1cN73rf10R0LWw5szh9JkfhUNg
	gaA+EafSKjFJM33VhU+o96ByDwNll+wM21AUi7w44GmRhGkltPtDAkVYDMUDBqd2
	qaHB1Jf8++G6f820FX8OjG6vP6RgJ7rcdJpZoGx7yDbnfVhHVcwJKIexvJudUUd4
	FKhsFYS1KwtKT1PcRTfPd5hTtGpWw8Wk0q6DxAicvEJJbw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as0w2eb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:21:29 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b7ef896edcso5185948eec.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770027689; x=1770632489; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2bsXukv11YhTkDBlYKoW8C2KjNjVjIRIsMzLs+8SGE4=;
        b=CkgQD+REYVP4X/3yqDIbMUkDB2nJbOCFWb9SHxi2LOoB9CUDTS38pSXCq0qPOO2oc9
         07vIXeo9AK0AWnBf/SDoHHHD+raL/Xe0aWrnsXTJSM0YUWXF1dYWHN3NGGIrOgkqJN4T
         zW+qZb24bBhayocX3cPEs/hForNC0DcVOE0mgVDOa7vJTM4iNN6R/hLdfSO/qo3PV/I0
         fx7wWZgs4Ag3G51kJbYMEQoqPw9SiYvcdt0OsRl85XvEdhnYlIoIVfBbponzB9j5txhy
         zEnPwzrjA1XMyqi0QDZp+lIRvw46bQmbTa40YYCY87mBR3fUsBeQqVFyzfPw2qfZVKDB
         /Yzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770027689; x=1770632489;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2bsXukv11YhTkDBlYKoW8C2KjNjVjIRIsMzLs+8SGE4=;
        b=mJK3lbGVltcyBIuO4uyh9JZfeuoI9Eoz/tkHQ6mwxuoMqv79Khzehf5e7MA7KP+gtJ
         Ir2BGiXXyXq6TqUmhaKcV3DvxGW+w6tN+QA8A7fbv3YvFysZASxXZ6TuPe9b5UD4QPyR
         aV7p7LKJLoByMQneu8dvTGcneOkuKR9qIk89uRS4DkgSgg6oPYoPhK3I9ZUL3kAFwBYB
         zv7TK33GHZZvb3L0ey1JtxiX7pmilzXW5gPxf2JtG7SY/iD4gf8PyYawT4Z2U/bg6J1K
         QC7g4+fSQGEBDL4u6EMKrjAhnm3mCpGf3C9FDdX3Lq/Msh//K0d2WQUsSz5V129lLAE0
         KqGg==
X-Forwarded-Encrypted: i=1; AJvYcCU5fpz0Nw7BeZIwbP9qxiKtaYnm3MG5LkjMgBZrt3eR10dFRIN1SQc7mT+u45bj9KsgxcxCpC3chu2Y@vger.kernel.org
X-Gm-Message-State: AOJu0YzgQvso1zY/CHUq/Eozf3wTQR6SWG0S9wlpcmD/Ef5/BYingMG5
	MusVqug9qqTlb0HNoblMNc4GHxTVvzdBKvOYb6jRZFsDzXRA9QxQHfMlSAlKT0DoVw6qNU/p62q
	QVP16G6naM4ugi/4S6hZIJYmOl+C5UoK/B8mKz+aru0lRM9RtzU5hzzc372/w8DW0
X-Gm-Gg: AZuq6aIMze/9LDX4+2Xk3cftKYBZue9S/xWEMuEX7nS5wjb3x5EFEjV3/R+He66QrOr
	bniUjuyr41TcGGBLM8imwTlnO5cxUuwclWSxPqdZpq8rK3IsBS529/0nuzFCG7aboS/cjX+Awdm
	2lfzVIv4lzPBPtKJA+sayQxHqzY9bjJMXVXigt7Q7FAZpRAfPR94EXsoqWeuVzomYhp4Vv1oMu4
	NswqXUtTJUJ0AYrPY1BZloJNu0N/aFfHhOhRbLZQ/S+o4oIp1GRkKaiTfEofug4sudWwfCWk2XV
	n1h8pVUAU/s+hV1M9ATlX718KWmKbuu03WHD5kMkXIRVxOQsK5nvPgd6EbULLUZUMQV8oWQ3lTM
	f2uDkirZ9ChLLViy42raFOmlvVYMpnXTAZSgNQ/4hXl/dFK7PnkQFYYGJ
X-Received: by 2002:a05:7300:e7ab:b0:2b7:3281:6c33 with SMTP id 5a478bee46e88-2b7c86469a1mr5218450eec.12.1770027688770;
        Mon, 02 Feb 2026 02:21:28 -0800 (PST)
X-Received: by 2002:a05:7300:e7ab:b0:2b7:3281:6c33 with SMTP id 5a478bee46e88-2b7c86469a1mr5218421eec.12.1770027687784;
        Mon, 02 Feb 2026 02:21:27 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a14bb02csm19246171eec.0.2026.02.02.02.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 02:21:27 -0800 (PST)
Date: Mon, 2 Feb 2026 02:21:25 -0800
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
Message-ID: <aYB6pS4EQVP4w0O9@hu-qianyu-lv.qualcomm.com>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <75lzykd37zdvrks5i2bb4zb2yzjtm25kv3hegmikndkbr772mz@w2ykff3ny45u>
 <aXtM9vE9y73vnVeA@hu-qianyu-lv.qualcomm.com>
 <6d2b92d0-55bb-4ce0-ad5e-316210a3d2c5@oss.qualcomm.com>
 <aYA0RBA9FjNmP8Ui@hu-qianyu-lv.qualcomm.com>
 <fe6f4de9-eb9c-45e9-a9c1-d780cc2f721c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe6f4de9-eb9c-45e9-a9c1-d780cc2f721c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NiBTYWx0ZWRfXxxiWT2b3eFyB
 slzfM4PCByjl+uNdEPaCN+8R4WjlR+DWZ7L3e7cbdVWaRUyQuETJVfrEhuG3WnMKVpWhsyg9kkq
 l3BdQvCqTRAthacg9pNG2zqT1Uay40E40vpT/pDVWumcDGAkc1Y6mByPlsrPYDpkDeS71hvvtrt
 ZXh6FCx4T8YPYBEiFrWrOPtQvUUvgQWa+YBg2ogytoHEWDDRAaUHUq7gWkGvnMH9t4vylrn9YXT
 3Et1FDNgYQH1NmKdjs9DC3psxFEKjIwda3acbeUHxeWtphu+sbmUWrjw9HOqjVBvhrq5676p3lx
 LviY8d4Y06IgsiK/O5Pc1YudbM9JDuwZ5cs4IMKp+Rc8zWpZhmyghihYkH7pmJl/OZuUDE/Yrnd
 D5JhZNTM09kYOiqmS5aEJG+2sLPA4TmTFeMpBvf2yk1Lc1BaKGlTrmokLmArXhcJbqKjjNkmur7
 sxk6Pm7Vr0gep/poRyw==
X-Proofpoint-ORIG-GUID: ZfUIXtliCxKE_9a26IHtiom5x3h2FZOd
X-Proofpoint-GUID: ZfUIXtliCxKE_9a26IHtiom5x3h2FZOd
X-Authority-Analysis: v=2.4 cv=MYthep/f c=1 sm=1 tr=0 ts=69807aa9 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=qC_FGOx9AAAA:8
 a=gEfo2CItAAAA:8 a=Ye9tIKnroX1ytzjuat0A:9 a=CjuIK1q_8ugA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=fsdK_YakeE02zTmptMdW:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261728-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,oss.qualcomm.com:dkim,qualcomm.com:url,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,0.0.0.0:email,ee00:email,hu-qianyu-lv.qualcomm.com:mid,b00000:email,a00000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.12.53.0:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F1C87CAE58
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 10:49:10AM +0100, Konrad Dybcio wrote:
> On 2/2/26 6:21 AM, Qiang Yu wrote:
> > On Thu, Jan 29, 2026 at 01:07:08PM +0100, Konrad Dybcio wrote:
> >> On 1/29/26 1:05 PM, Qiang Yu wrote:
> >>> On Wed, Jan 28, 2026 at 07:21:04PM -0600, Bjorn Andersson wrote:
> >>>> On Thu, Jan 22, 2026 at 08:53:57PM +0530, Pankaj Patil wrote:
> >>>>> Introduce dt-bindings and initial device tree support for Glymur,
> >>>>> Qualcomm's next-generation compute SoC and it's associated
> >>>>> Compute Reference Device (CRD) platform.
> >>>>>
> >>>>> https://www.qualcomm.com/products/mobile/snapdragon/laptops-and-tablets/snapdragon-x2-elite
> >>>>> https://www.qualcomm.com/news/releases/2025/09/new-snapdragon-x2-elite-extreme-and-snapdragon-x2-elite-are-the-
> >>>>>
> >>>>> The base support enables booting to shell with rootfs on NVMe,
> >>>>> demonstrating functionality for PCIe and NVMe subsystems.
> >>>>> DCVS is also enabled, allowing dynamic frequency scaling for the CPUs.
> >>>>> TSENS (Thermal Sensors) enabled for monitoring SoC temperature and
> >>>>> thermal management. The platform is capable of booting kernel at EL2
> >>>>> with kvm-unit tests performed on it for sanity.
> >>>>>
> >>>>> Added dtsi files for the PMIC's enabled PMH0101, PMK8850, PMCX0102,
> >>>>> SMB2370, PMH0104, PMH0110 along with temp-alarm and GPIO nodeS.
> >>>>>
> >>>>> For CPU compatible naming, there is one discussion which is not specific
> >>>>> to Glymur, Kaanapali and Glymur use the same Oryon cores.
> >>>>> https://lore.kernel.org/all/20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com/
> >>>>> We've kept the "qcom,oryon" compatible
> >>>>>
> >>>>> Features enabled in this patchset:
> >>>>> 1. NVMe storage support
> >>>>> 2. PCIe controller and PCIe PHY
> >>>>> 3. RPMH Regulators
> >>>>> 4. Clocks and reset controllers - GCC, TCSRCC, DISPCC, RPMHCC
> >>>>> 5. Interrupt controller
> >>>>> 6. TLMM (Top-Level Mode Multiplexer)
> >>>>> 7. QUP Block
> >>>>> 8. Reserved memory regions
> >>>>> 9. PMIC support with regulators
> >>>>> 10. CPU Power Domains
> >>>>> 11. TSENS (Thermal Sensors)
> >>>>> 12. DCVS: CPU DCVS with scmi perf protocol
> >>>>>
> >>>>> Dependencies:
> >>>>>
> >>>>> dt-bindings:
> >>>>> 1. https://lore.kernel.org/all/20260121-glymur-pmic-mfd-v1-1-2aab4f21e79c@oss.qualcomm.com/
> >>>>> 2. https://lore.kernel.org/all/20251215-knp-pmic-leds-v3-2-5e583f68b0e5@oss.qualcomm.com/
> >>>>> 3. https://lore.kernel.org/all/20260121110828.2267061-1-pankaj.patil@oss.qualcomm.com/
> >>>>> 4. https://lore.kernel.org/all/20260111155234.5829-1-pankaj.patil@oss.qualcomm.com/
> >>>>>
> >>>>> Linux-next based tree with Glymur patches is available at:
> >>>>> https://git.codelinaro.org/clo/linux-kernel/kernel-qcom/-/tree/b4/v6_glymur_introduction
> >>>>>
> >>>>
> >>>> FWIW, I applied these patches onto next-20260128 to see if things has
> >>>> improved since Rob's report and I get:
> >>>>
> >>>> $ make qcom/glymur-crd.dtb CHECK_DTBS=1
> >>>>   DTC [C] arch/arm64/boot/dts/qcom/glymur-crd.dtb
> >>>> qcom/glymur-crd.dtb: dma-controller@800000 (qcom,glymur-gpi-dma): interrupts: [[0, 588, 4], [0, 589, 4], [0, 590, 4], [0, 591, 4], [0, 592, 4], [0, 593, 4], [0, 594, 4], [0, 595, 4], [0, 596, 4], [0, 597, 4], [0, 598, 4], [0, 599, 4], [2, 129, 4], [2, 130, 4], [2, 131, 4], [2, 132, 4]] is too long
> >>>>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> >>>> qcom/glymur-crd.dtb: dma-controller@a00000 (qcom,glymur-gpi-dma): interrupts: [[0, 279, 4], [0, 280, 4], [0, 281, 4], [0, 282, 4], [0, 283, 4], [0, 284, 4], [0, 293, 4], [0, 294, 4], [0, 295, 4], [0, 296, 4], [0, 297, 4], [0, 298, 4], [2, 124, 4], [2, 125, 4], [2, 126, 4], [2, 127, 4]] is too long
> >>>>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> >>>> qcom/glymur-crd.dtb: dma-controller@b00000 (qcom,glymur-gpi-dma): interrupts: [[2, 76, 4], [2, 77, 4], [2, 78, 4], [2, 79, 4], [2, 80, 4], [2, 81, 4], [2, 82, 4], [2, 83, 4], [2, 84, 4], [2, 85, 4], [2, 86, 4], [2, 87, 4], [2, 88, 4], [2, 89, 4], [2, 90, 4], [2, 91, 4]] is too long
> >>>>         from schema $id: http://devicetree.org/schemas/dma/qcom,gpi.yaml#
> >>>> qcom/glymur-crd.dtb: pmic@1 (qcom,pmh0101): led-controller@ee00:compatible:0: 'qcom,pmh0101-flash-led' is not one of ['qcom,pm6150l-flash-led', 'qcom,pm660l-flash-led', 'qcom,pm7550-flash-led', 'qcom,pm8150c-flash-led', 'qcom,pm8150l-flash-led', 'qcom,pm8350c-flash-led', 'qcom,pm8550-flash-led', 'qcom,pmi8998-flash-led']
> >>>>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> >>>> qcom/glymur-crd.dtb: pmic@1 (qcom,pmh0101): pwm:compatible: 'oneOf' conditional failed, one must be fixed:
> >>>>         ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm'] is too long
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm660l-lpg', 'qcom,pm8150b-lpg', 'qcom,pm8150l-lpg', 'qcom,pm8350c-pwm', 'qcom,pm8916-pwm', 'qcom,pm8941-lpg', 'qcom,pm8994-lpg', 'qcom,pmc8180c-lpg', 'qcom,pmi632-lpg', 'qcom,pmi8950-pwm', 'qcom,pmi8994-lpg', 'qcom,pmi8998-lpg', 'qcom,pmk8550-pwm']
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm6150l-lpg']
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8550-pwm']
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8937-pwm']
> >>>>         'qcom,pm8150l-lpg' was expected
> >>>>         'qcom,pm8916-pwm' was expected
> >>>>         from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml#
> >>>> qcom/glymur-crd.dtb: led-controller@ee00 (qcom,pmh0101-flash-led): compatible:0: 'qcom,pmh0101-flash-led' is not one of ['qcom,pm6150l-flash-led', 'qcom,pm660l-flash-led', 'qcom,pm7550-flash-led', 'qcom,pm8150c-flash-led', 'qcom,pm8150l-flash-led', 'qcom,pm8350c-flash-led', 'qcom,pm8550-flash-led', 'qcom,pmi8998-flash-led']
> >>>>         from schema $id: http://devicetree.org/schemas/leds/qcom,spmi-flash-led.yaml#
> >>>> qcom/glymur-crd.dtb: /soc@0/arbiter@c400000/spmi@c426000/pmic@1/led-controller@ee00: failed to match any schema with compatible: ['qcom,pmh0101-flash-led', 'qcom,spmi-flash-led']
> >>>> qcom/glymur-crd.dtb: pwm (qcom,pmh0101-pwm): compatible: 'oneOf' conditional failed, one must be fixed:
> >>>>         ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm'] is too long
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm660l-lpg', 'qcom,pm8150b-lpg', 'qcom,pm8150l-lpg', 'qcom,pm8350c-pwm', 'qcom,pm8916-pwm', 'qcom,pm8941-lpg', 'qcom,pm8994-lpg', 'qcom,pmc8180c-lpg', 'qcom,pmi632-lpg', 'qcom,pmi8950-pwm', 'qcom,pmi8994-lpg', 'qcom,pmi8998-lpg', 'qcom,pmk8550-pwm']
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm6150l-lpg']
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8550-pwm']
> >>>>         'qcom,pmh0101-pwm' is not one of ['qcom,pm8937-pwm']
> >>>>         'qcom,pm8150l-lpg' was expected
> >>>>         'qcom,pm8916-pwm' was expected
> >>>>         from schema $id: http://devicetree.org/schemas/leds/leds-qcom-lpg.yaml#
> >>>> qcom/glymur-crd.dtb: /soc@0/arbiter@c400000/spmi@c426000/pmic@1/pwm: failed to match any schema with compatible: ['qcom,pmh0101-pwm', 'qcom,pm8350c-pwm']
> >>>>
> >>>> So, we're still missing a few dependencies.
> >>>>
> >>>>
> >>>> Booting the system I get a ton of errors from PCIe in the kernel log:
> >>>>
> >>>> debugfs: 'opp:5000000' already exists in 'soc@0-1c00000.pci'
> >>>>
> >>>> # dmesg | grep -E 'debugfs: .+ already exists' |wc -l
> >>>> 508
> >>>>
> >>>> The system does eventually boot, and I was happy to see that we do end
> >>>> up finding the PCIe devices after all.
> >>>>
> >>> I enabled dynamic debug logs and observed that each PCIe platform device
> >>> probe was deferred approximately 10 times. The probe deferrals resulted in
> >>> additional OPP debugfs warnings being printed.
> >>>
> >>> The PCIe platform device probe was deferred because the PHY driver was not
> >>> ready - either because the PHY driver was not yet loaded, or because the
> >>> PHY driver's own probe was also deferred due to its dependency (e.g.,
> >>> 1fd5000.clock-controller) not being ready. This is normal behavior,
> >>> correct? I also observed that other driver probes were deferred.
> >>>
> >>> But I'm not sure why there are more than 300 times probe deferrals on
> >>> your setup.
> >>
> >> I think Bjorn is trying to say that the driver is wrong, because it
> >> effectively seems to call devm_pm_opp_of_add_table repeatedly
> >>
> > Okay, to avoid PCIe driver probe deferrals and the resulting increased OPP
> > debugfs warnings caused by these deferrals, we plan to move the PHY
> > properties back from the root port node to the controller device tree
> > node.
> 
> Would (roughly) this solve your problems without messing with the DT?

This change cannot fix the OPP warning. The warning occurs because the OPP
subsystem creates debugfs nodes using "op-hz" as the name, which is not
unique for PCIe OPP tables. Mani posted a patch to fix this issue:
https://lore.kernel.org/all/20260130071940.6949-1-manivannan.sadhasivam@oss.qualcomm.com/

Our goal is to prevent probe deferrals from occurring in our driver.

- Qiang Yu
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index fb6bd545f89f..745cca225bcf 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1917,6 +1917,24 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>  
>  	pcie->cfg = pcie_cfg;
>  
> +	ret = qcom_pcie_parse_ports(pcie);
> +	if (ret) {
> +		if (ret != -ENODEV) {
> +			dev_err_probe(pci->dev, ret,
> +				      "Failed to parse Root Port: %d\n", ret);
> +			goto err_pm_runtime_put;
> +		}
> +
> +		/*
> +		 * In the case of properties not populated in Root Port node,
> +		 * fallback to the legacy method of parsing the Host Bridge
> +		 * node. This is to maintain DT backwards compatibility.
> +		 */
> +		ret = qcom_pcie_parse_legacy_binding(pcie);
> +		if (ret)
> +			goto err_pm_runtime_put;
> +	}
> +
>  	pcie->parf = devm_platform_ioremap_resource_byname(pdev, "parf");
>  	if (IS_ERR(pcie->parf)) {
>  		ret = PTR_ERR(pcie->parf);
> @@ -1979,24 +1997,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>  
>  	pp->ops = &qcom_pcie_dw_ops;
>  
> -	ret = qcom_pcie_parse_ports(pcie);
> -	if (ret) {
> -		if (ret != -ENODEV) {
> -			dev_err_probe(pci->dev, ret,
> -				      "Failed to parse Root Port: %d\n", ret);
> -			goto err_pm_runtime_put;
> -		}
> -
> -		/*
> -		 * In the case of properties not populated in Root Port node,
> -		 * fallback to the legacy method of parsing the Host Bridge
> -		 * node. This is to maintain DT backwards compatibility.
> -		 */
> -		ret = qcom_pcie_parse_legacy_binding(pcie);
> -		if (ret)
> -			goto err_pm_runtime_put;
> -	}
> -
>  	platform_set_drvdata(pdev, pcie);
>  
>  	ret = dw_pcie_host_init(pp);
> 
> Konrad

