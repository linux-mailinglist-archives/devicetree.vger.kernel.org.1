Return-Path: <devicetree+bounces-267556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCjWJcOMnGmdJQQAu9opvQ
	(envelope-from <devicetree+bounces-267556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:22:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E2917AB3A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C78AD300808C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3423032AAD3;
	Mon, 23 Feb 2026 17:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V+xjFPlX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f7AvrP4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB3D328B7F
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771866903; cv=pass; b=OhKVJcf/22rarlh3KmHNR51hO4Z60zR1b87e1BvHvlhUypnLwDl+keo0f/J3VGQ3AsZ4/4yEYX/1qhfEipfsLvFxJecxeF5iAc06f5jjdQveb/y0MZvXfItJ33ehhdq/Y2SHYD0HCmwazq0KP0zLekIyCLcS1Cfy1tsFVxLPHG0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771866903; c=relaxed/simple;
	bh=sivTHWD9LX85++nV1/o9kB35p/6TtEGtO2ZvoL3f5Dg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fPgr8O9lTtsW3hrDlM1UGlgCOb/30Ju4aq7E4kAE0uMz2SoFexlqHVDB2fOQ4sP1kMxqsSTrzx3ZjiktYi6zZ7egGvaGtomJLdpAqkHDu7yycqJQJ3O5BNkiEOZxyqjqQI5e3D3FUqFtq+17ZXT8/naEqFgyA1r45DNnWLijHG4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V+xjFPlX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f7AvrP4+; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NH4HLZ910194
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:15:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wh7kU6ZDVbvD/9tP6ZOLZ53B
	u1ldM81AwUKEiVq1unM=; b=V+xjFPlXZagKk5j0l0qOtnm90VoROFpw19JzGSZ1
	c5FjEKAQw8qPznNKya7lDKd/1dfdXl05/8Zws1h9KqtAzvmRDn6lp7h7AmrlCQbT
	I5U6IBuIOnNqaS0BYsE3i2DQaHXgcI0XaZ1X4OntdA0xnRecFEScpYE1+EQd+o+z
	pPykmIBnQR6cr5oEFXLgxXiBC5hq8RN0Z1gFAaAgrKLIjGd5E8+ubsmAbGTlVh73
	o0TSuI/A9d+fKAGfd1vOn48Zb0vIBgF8FuWfDXZvYDuCgt8QpIWyZdj6XYbE0/gU
	E+Xu0KJbz2keqLG7y9Gv1P65MeZiNwH0UI9kXT/loSjp1Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtyj818x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:15:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aaf2ce5d81so61658335ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:15:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771866900; cv=none;
        d=google.com; s=arc-20240605;
        b=KyrwFEDmJCQgEiIFc7Vpwv3cvCWqJZOFLvVESqDjKrCRosdwRXPZQt2BNnDspoSyL9
         eja/5Dm02PQfKaD8ksoIF66/EZvbKQmOSA/bNl5hM8+NuLunAc95Nfutdbze3GxFP65d
         EjQuC4x0upSMJoXJOz4rz5NmZorY9eMuwy+crpbzs+VhHtphnhD6KhhK4Ufq/bq7dflS
         zKGnY2NGVQf26lH//SY835NlXA3MAUe1N60qFihOMJIDtgUxwwvpXvUythmfL/1Zj05a
         ANG6yZWegN7FpeoA+AzB329kbBA8Te7arzyCbrCEZ6pRjORWGJhsWMF7Mb7GlDfxEfnm
         dzFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wh7kU6ZDVbvD/9tP6ZOLZ53Bu1ldM81AwUKEiVq1unM=;
        fh=aKYlU2nrzMQKTM+JQt0IygaBSyH1FceHzjQTvliLN0k=;
        b=WzdbJb75AihVec40SqphlHUCFXimW/G5MgjZCiAs3iVhwXR2W17HHcN3k4yuboMtNN
         qYgWvYQI9Y46CupE299nYmlz00SFn20tJdqoUA0Z1lXYbtTYpstw6he3kvc5qt892nO6
         W6K+b4W0MiZExo74ngdAJ1B72lwglHD1URAaI5BYWY9jtQ7qDS9vcBmaHe6wGjP0U7ix
         P4r3GEYXjYicbItQsfvX9ENLt7ewdTA3NseIDwIvg1vJoGIf2BAZz4hmPwZBjujKeNt/
         f9325rC0oDPwS3PFmv/keUWl5NXrUcOVy55/zft4A2RGISr6AV4iiv+IbMazP4h6hIUw
         L8pA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771866900; x=1772471700; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wh7kU6ZDVbvD/9tP6ZOLZ53Bu1ldM81AwUKEiVq1unM=;
        b=f7AvrP4+BVyA4Iv1Ehcyt8FYyiEFXf/OWvlu8ReTCLZTu6BJMUGE/7dXYlytKCG8WR
         NdLDE3viDxpjfmf4hKNgh0cB5eku+RyAss0ZiDly5uc0MB3gjM5Jdu5SX4eKpMP4ie1j
         cVCubcLDpt0Ecu7AaMzHsO55hfCAjALw2u7ow4eL+7sWKxXQrS0YANon8V2dLdbbqrBv
         hoD3IH5uACI7BJ47CPayFu8kEocWxSvND6TqV5QAvO+n7JGfr2TSYTVAulLuyFWpU0Rv
         TGLLBiSI+3JSCAIsrDq3RAWV3xhJfPyGSRT/ga+/UaNxmYvzhvBO0WoLLKkhN5MPcoK9
         73ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771866900; x=1772471700;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wh7kU6ZDVbvD/9tP6ZOLZ53Bu1ldM81AwUKEiVq1unM=;
        b=sEDgr5BWRDEa8lLQJJUHxmLpvA0GLRtaNKXqM9/4p7rMVdGIJFnQaZIhqLb9csmOyF
         7bnmfQX9+hWkrq8gzuVm/Ikp3k6lRvSP0uqfTAxy9TW0d/li7QGgtFfjJYbJRONNIygi
         THvdswhgLVJ/n6MKv4ra82435J5QwP8zSZht+4+X33swgQfETjp/CxiYDXc3A/jdvYif
         ZoRtRC3Sq6VnZ4D5yp78L2OXvCMguVPXlmOUS9DBvdYdBulmQxj9MMt8lA1JZW+0EjcY
         JiyQI3PH4NjcKrrQNsw9tVfIoN9wn+gaB4RxcaqkXgddSK4YK/HSDwczIXORBWS57BJW
         VRXg==
X-Forwarded-Encrypted: i=1; AJvYcCUVKV2HZNZ7YdzOCgkfbGqFqh/7FALeF/jWqu+usxh0YRIgspYQB9R7YvBADNJ3Is9ZKZxfs8shXk0M@vger.kernel.org
X-Gm-Message-State: AOJu0YwsreF/PF9SgJCgCacVc9++9m9pFQDjOxVGdvcbcyISYmvjFJiY
	6Ef/+hf30Yz7HTU2pYRZ3DOXc2FN90x9AlRGQTs3S71BfBM8n4j9/uZUpKXh7QTnaymSlIgQW8f
	Aa4QtZFyDqmJx2AYBMKmpzZPHbGj98FEKFI1RdGhPJPVXvsg/31eTzMJP6Z4xbqgSCmw2oNXYCa
	IsXczIbiEUF+HrxdyZ24o1jdQxI7QTnerPOGv+LOQ=
X-Gm-Gg: ATEYQzxQVnUmuoFPEZFU98nHcTvmXPK762pdIO4gQICjMt+7qtPl/G3CsxxckgctxWL
	JRQ8Wit9aoNLq0xWav2zbKvNMD7rcK/7ASnoMSdMx+Dj8Xh5yooZ/TZGjHTf/Vl4716d6ivFdBu
	2S3YLUxpp5rDYeQAzk6HNOKFnXqpEJamjwipIx/Z9Sq1Bv0sM9w+eMQxLHqHZ8WlRMZcunxUeyf
	zp4tjc=
X-Received: by 2002:a17:90b:4d07:b0:356:9405:759d with SMTP id 98e67ed59e1d1-358ae7fd547mr9439351a91.9.1771866900344;
        Mon, 23 Feb 2026 09:15:00 -0800 (PST)
X-Received: by 2002:a17:90b:4d07:b0:356:9405:759d with SMTP id
 98e67ed59e1d1-358ae7fd547mr9439301a91.9.1771866899637; Mon, 23 Feb 2026
 09:14:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com> <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
 <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
 <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com> <yaunylao3nefmhbdovpfoymy63hjfjtvbwm5quqvdyk3enpno6@7rmpnx7esdhs>
 <8d96ebc8-67e2-424d-adbc-0948dd3641a0@oss.qualcomm.com>
In-Reply-To: <8d96ebc8-67e2-424d-adbc-0948dd3641a0@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 23 Feb 2026 19:14:47 +0200
X-Gm-Features: AaiRm501mLQQ8EL4TUeJKdJtQPxrmINvjfQ-5i--0rLisA6GLW_3SyuzX8m0n54
Message-ID: <CAO9ioeUSJQC685K47qMBn51r7APReO9T+h_K3bZ_94Uwn1unBg@mail.gmail.com>
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
To: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Authority-Analysis: v=2.4 cv=Jq/8bc4C c=1 sm=1 tr=0 ts=699c8b15 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8 a=iTchkLz9Y-giF9P-svAA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 8NKrXbXh0T447oQOaVjAtgJByFCWwvKy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE0OCBTYWx0ZWRfXweCwYI4w/L5I
 8jgsaNrQ9DWbNpir+5KSAB6yiieoFeYgHRRi91uQYeyu375ghMA1GN+GNZDcX3H1nbmGk9Zugwh
 0M6S+nXh+G1MFGjxkuaZ5ylqB+fYQJqMozkSXSpNUddBYRs7RokLcfFQC2AIF+GPJnKm0iWjPFL
 1M9Ty6zgtq1pCjh/nLoPHgk3IhdHTJnVMyu8s9ApNa8K11IyongQ2c2eEpqQKmYXZxnmlW/fGQD
 n0jYqHK59EnywB4sehgJVElcDAkUevU/jKSNyzg9qy+Shg9fX5/IwulOwV7bHEv8Faw9zeZotbh
 WcRN2D6NULX0ENEn+AC7cqE+P94LgNd0qkhE4TUT0xyKEJodvPhENj+zpaFg95BSNLgvLec5Y8U
 6eSOkBeRTKiFX6zaKF7EyxjJsolZEwt4Nazt/Azl2r3MQb7M7yABWV2iebtyK1+BwYnoccrsIkq
 wi7W0mAj8pfgzSuFCrw==
X-Proofpoint-GUID: 8NKrXbXh0T447oQOaVjAtgJByFCWwvKy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_04,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267556-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,mail.gmail.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E0E2917AB3A
X-Rspamd-Action: no action

On Mon, 23 Feb 2026 at 11:09, Sibi Sankar <sibi.sankar@oss.qualcomm.com> wrote:
>
>
> On 2/3/2026 6:09 PM, Dmitry Baryshkov wrote:
> > On Mon, Feb 02, 2026 at 11:16:19AM +0100, Konrad Dybcio wrote:
> >> On 1/31/26 8:54 AM, Dmitry Baryshkov wrote:
> >>> On Fri, Jan 30, 2026 at 10:55:24AM +0100, Konrad Dybcio wrote:
> >>>> On 1/29/26 1:13 AM, Sibi Sankar wrote:
> >>>>> Enable ADSP and CDSP on Glymur CRD board.
> >>>>>
> >>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> >>>>> ---
> >>>>>   arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
> >>>>>   1 file changed, 14 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>>>> index 0899214465ac..0eed4faa8b07 100644
> >>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> >>>>> @@ -487,6 +487,20 @@ &pon_resin {
> >>>>>           status = "okay";
> >>>>>   };
> >>>>>
> >>>>> +&remoteproc_adsp {
> >>>>> + firmware-name = "qcom/glymur/adsp.mbn",
> >>>>> +                 "qcom/glymur/adsp_dtb.mbn";
> >>>>> +
> >>>>> + status = "okay";
> >>>>> +};
> >>>>> +
> >>>>> +&remoteproc_cdsp {
> >>>>> + firmware-name = "qcom/glymur/cdsp.mbn",
> >>>>> +                 "qcom/glymur/cdsp_dtb.mbn";
> >>>>> +
> >>>>> + status = "okay";
> >>>>> +};
> >>>> Please make sure it gets to L-F (only Kaanapali is there right now)
> >>>>
> >>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>> Hmm, looking at x1e80100-crd which references qcom/x1e80100/adsp.mbn,
> >>> but the firmware in linux-firmware is (now) targeting IoT devices,
> >>> should we use WoA-like names for firmware on Glymur CRD instead
> >>> (qcadsp-something.mbn). It would match what was done for the SC8280XP
> >>> CRD.
> >> I think it's simply time to stop pretending the firmware is generic
> >> (some fw simply isn't and some fw may come from different/incompatible
> >> branchpoints) and include a board name in the path
> > Well... CDSP is usually generic, except for WP vs non-WP.
>
> Hey Dmitry/Konrad,
>
> Thanks for taking time to review the series :)
>
> The ADSP/CDSP firmware that got upstreamed to linux-firmware got their
> functionality tested on Glymur WP CRD devices.  Given that the firmware
> has already landed, can I continue to use the same name as the patch and
> have a different name for other boards if something specific has to be
> pushed
> for IOT?

Thank you for a prompt reaction, it took just 20 days. During that
time we could have fixed WP firmware filenames, but... linux-firmware
got released just two days ago, so we can't fix that anymore. Now we
don't have any other option than to use a non-standard name for IoT
firmware when it comes later.

>
> -Sibi
>


-- 
With best wishes
Dmitry

