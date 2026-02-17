Return-Path: <devicetree+bounces-266051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNBKHI83lGlpAgIAu9opvQ
	(envelope-from <devicetree+bounces-266051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:40:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DC67F14A7E9
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:40:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF8A43029C0F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485C1310645;
	Tue, 17 Feb 2026 09:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZqfWP1wB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jSdjBIuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B43101CD
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771321227; cv=none; b=sYJ1MXb2V07w1VEwMd2S2ayOgu3MEP5O9PV3QeVOYojBgJyOwqE23NqMB6MDnw9flrYhbGC4v8dAwDueXH+Lbey7VsARhNLGi+7aIPoLOzFqDyCv82FSIGHErzyQVzVgGbH6pAHo6D7/FAxwV5DoFqJV4CEbx+IIe/g1CWYPPiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771321227; c=relaxed/simple;
	bh=L1F29Ki+C6Jarg+FkXkDy7PdREUWIWmKvMvYGwqJAU8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TePwP5WgLf4QGzppnllYUxFhByx/EN0IP+6XfVPUxkzTo8kz8JrV1chQDMjHQYC8jsJPfiJwjSQD5KQ/MmXaRY8ApqI3ouju8bYMrHqr/Hkx8282YjnrI1WbQmkmVDQavcxH5a9SXi0DWuOBNKdn9wXeUu2wuGckH9FcSg0f03w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZqfWP1wB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jSdjBIuM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H9Bk021601691
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:40:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bFebxt70OffaHIzG8AkL/K7ZwIi8ATS7zxwHzKYNTw4=; b=ZqfWP1wBIW2arHQv
	fmq26m3UTL3/49uN6OX74gSV69SE3xlZ6E7v9P145qVphbD8lLJNTzaAlSA14ya6
	u4ZoiwNpJrMW+2NaMPLwpIaVbzvpv/mKD2/8rIy1AX6Md5mcDHM14Gdfd97f8jYI
	ojE4SIHmDDz4oiF/Y/GYAcUNXAxv3FaZxx7DgJHR0Raf/RekAZoZIoM5toNo5fFo
	yhAzainorf4z8gpk+u0rWFqoTj5kKAADnZ/CynFx2+mBPdd7IMOMY2RZirSCe43v
	besRIIv1VQw/tr4f6bP2QK8mVWZn8N1xAij/xxK+0F6eNhM94hFIFaoxocge5yBv
	jnfDdw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tm9r9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:40:24 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb38a5dc3cso253598385a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771321224; x=1771926024; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bFebxt70OffaHIzG8AkL/K7ZwIi8ATS7zxwHzKYNTw4=;
        b=jSdjBIuMf3yg9HzVHUYdfsqpvHzRISZRpbJrJKcac9nF/6gpjLI5RY3wsY5wMGUox6
         6UoC7sn0S9J7GshKvo7T1ZGC33UGsAF/Y+Gd68LIWI4wuffj+rryutDGosXbScjtsXYT
         LfdzKt2R//7Ti5h4yPwhemwCahhSiE5RnCRYHrWgneisPcPmUhFn5Jr3U2d49U42Lc2I
         DmITwoy4bynsb2JwQDJCEEzQo4tOeuKtSE8N7+NDKo9rxHm37QT+5X/mxdcT5Usa0Cad
         Kde+kjqCmbsGgr5mfu8SR8fk5V8GSqLj/mVPEe5Xx6vdR2X+ydVLfY2bECIYigCTfcWM
         tu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771321224; x=1771926024;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bFebxt70OffaHIzG8AkL/K7ZwIi8ATS7zxwHzKYNTw4=;
        b=dscdU+eVQU/cfXEgObnJktV9pu9Sh+sT9QDsWSmnmaNAtVI3wNrrtpogkQaWH5Vt2c
         tLHFnrpuE67nLEVRryYCvgopQ9LEtmgWEzfjrf/bxt5E4KKZJxj5T30XwsNd2pDxniS3
         GyrT4Vlv+mUGW+2lcWH1iU2Li0WPRabtk8Ur5pMpUTeLnz1vk/2DSp7Btu5GrwxCTNH0
         +qW78zTF4aKvDbdovzbP/M3ObIDu6tpbjvw9KXMxUfN3ilX4NOhNKtLXH6LfFsf5vq9c
         n33yS9sIIhBFu1TEtS77caS4hfcsucRic4ebgTnHlx+0MDhMf6GCRhFeeUQo/MH5FKCL
         Rvgg==
X-Forwarded-Encrypted: i=1; AJvYcCVVzaGXRucPdotqpY79J6BbPpPIAa+BZ7zsUNq0vmjToRDo0K8WX6Gg76PXufmB82Kf/7SMkNUQEVhQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9+Ic2XddorcLtB/4h5/56K9NoLHASYp/bUNtaV1PWtr/87yTW
	gpAQhLYGIeg/sZYIPQdusxlPiBebI17sUlxzX0aZ3MqAYRY3ktvrEjtV//zPeQ6mKNvVaKw24KT
	M8mIFtk3T4UeUYjxbl9IBwMmzd8/LqtkOyYsyebuxBgjBlgYcZHBZBZwYbOvrCvdr
X-Gm-Gg: AZuq6aJMce5oli1wie9XzbEc6hcC5LNS4KdhGyUVxKtkFT9l/AvfW4MV3AxRMHL+Gkd
	uJvQYhXHrN9XWsHfHQWbkaaApyyOpUqCko9iMvH2ZEEaKptC1bQwekP/KoLOpUMROGfPt56rF99
	GtrbTt6tLoGue+pccXOPejlT9MfZbhxTLTR0JcAlFvs16wudMedSAxlkp8zxQ8n7iguvcYx7roj
	QrHAsQ2bhT2xNIwN8vmsck2ptTQdaZdoAIp/4Z19mTV7UdOkztfUUX/LfhVVWTBdoAylbEKrhG/
	I+V6K99CedxSVxK0T1434gJnKTAFgiCH3xq5/urLnXeVlwpGLcORdAnmDO5UWthPyzZCmZMJMND
	3H0Qo+pX4V5z1BzrWfl1LWVQbyOIvaHPtkxf8Jh+0TbYhMd9Xb1H/Sn3Svl1TRj20dgdvoIcgYq
	oBsHQ=
X-Received: by 2002:a05:620a:15b5:b0:8cb:52c2:6f19 with SMTP id af79cd13be357-8cb52c271aamr616330185a.7.1771321224458;
        Tue, 17 Feb 2026 01:40:24 -0800 (PST)
X-Received: by 2002:a05:620a:15b5:b0:8cb:52c2:6f19 with SMTP id af79cd13be357-8cb52c271aamr616328485a.7.1771321224081;
        Tue, 17 Feb 2026 01:40:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc73f7bf7sm329218166b.29.2026.02.17.01.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:40:23 -0800 (PST)
Message-ID: <0fd7a5f7-a983-498d-b18e-5a7efd910410@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:40:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: lemans: add mdss1 display device
 nodes
To: Mani Chandana Ballary Kuntumalla <mkuntuma@qti.qualcomm.com>,
        dmitry.baryshkov@oss.qualcomm.com, marijn.suijten@somainline.org,
        swboyd@chromium.org, mripard@kernel.org, abel.vesa@linaro.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, robin.clark@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, abhinav.kumar@linux.dev,
        sean@poorly.run, airlied@gmail.com, simona@ffwll.ch,
        alex.vinarskis@gmail.com
Cc: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260217071420.2240380-1-mkuntuma@qti.qualcomm.com>
 <20260217071420.2240380-2-mkuntuma@qti.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217071420.2240380-2-mkuntuma@qti.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _ov1ywxiiJNQrJtGkqK4yaLVzDmB-HUO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA3OSBTYWx0ZWRfX1gdZRrAIu8HL
 sa2ZKUTwzOuMXY+Zuq9DoK+ZRvjzhejkHCIAgAk5V4TupwomEmqda/Z0CY6e0KoXd/tp8Oo3oHW
 MYq8vvDLYWGXwrnxjqoY+Gb/lOTRPI8p1dQaXoTQGqg0AJInRND7Ss9Antlr2W9O4IpI2CBUiH9
 rzalF1bfFFd08j2yliSVqV9Hci92pzP1YIcs2M3HmzFhKUoxCRan6SPtW/YdyBBNF0dMUz+1xHY
 6wlmkGqaueoUjleHMIL9QE9/28Bw1ww0lPaRBAqWbbfM7yFy37FXlxVlHVt4vRKBrkmh4o48MhD
 MYnppDOt5AHvjwbd6dwGcI7B8hMZcnLkX8xy1sz/HG/Kc/NMIRV1UJp7nUSpQGm65Xcs2CkWhWR
 oy7ogNNUHIbew0gvcYuFWWpSPfvAi7MXdj2YtDVJFx6NepW/xO8b5pI8XhXyCzzRKfe0bhjsRL+
 cFOiaBIYT4wJsWWVgjg==
X-Proofpoint-ORIG-GUID: _ov1ywxiiJNQrJtGkqK4yaLVzDmB-HUO
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=69943789 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=jOm0eYPikRZL3_VOfAkA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266051-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[qti.qualcomm.com,oss.qualcomm.com,somainline.org,chromium.org,kernel.org,linaro.org,linux.dev,poorly.run,gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,quicinc.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DC67F14A7E9
X-Rspamd-Action: no action

On 2/17/26 8:14 AM, Mani Chandana Ballary Kuntumalla wrote:
> From: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> 
> Add devicetree changes to enable second Mobile Display Subsystem (mdss1),
> Display Processing Unit(DPU), Display Port(DP) controllers and eDP PHYs
> on the Qualcomm Lemans platform.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
> ---

[...]

> +			mdss1_dp0_phy: phy@220c2a00 {
> +				compatible = "qcom,sa8775p-edp-phy";
> +
> +				reg = <0x0 0x220c2a00 0x0 0x200>,

Since you are going to resend already, please uniformly delete the \n
before 'reg'

lg otherwise

Konrad

