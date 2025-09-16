Return-Path: <devicetree+bounces-217921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEE9B59BB0
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E788417A2E0
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8372D12ED;
	Tue, 16 Sep 2025 15:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nlyuVcXr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2F2231842
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758035288; cv=none; b=PBOSrdEV9ZQO0ItknKhz+Hy3/Sq/lp2RXfsAC7Ek+3NcRRXJy1CpEOagC6mudoRWdQ5HLKrtLvxZZ7bI+T4Jv0gzXnGiHnubns14Q0nKqB7WnJ9cMSuxnO3TzpgwvKefMchRBH6z6LPCq8ieP4QXh+7T6+V/FrG5cqPY5xgsIfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758035288; c=relaxed/simple;
	bh=+/iokOMthEBqZY0nc3dCTFOtJ9aBIskV8eLPLw7WHO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LLvp4WFz/GiPckHni618icrsWDP5miikbRXYsxOpqa3C/o39lSiJXWwaQlIxYJVIFblWwJb6Xj++Eg4UXpY7Gwwph/fHpNyt+antnzbuV5S2SsftRJ+akGsKLEsuAprKkI8gLAwnCCCNK/a7ErTijncAxVCbpjU2ztD2U0JEN7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nlyuVcXr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAKkxr010528
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:08:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MPO+d98w+3iOJ7r1VX7ngwgK
	hIE+yDWZLLAhoG1dbAg=; b=nlyuVcXrJnUzhyRVPM1B6Sphd+3+fE2FQG7VCLXF
	NYYrAzC4DyDkngeC2PxazuxgS5kUV/sJpQRiR/m3oB4DNFXSBxoX2XSsLdeMaWFa
	lCFyRt4SyfsSyoaJyStpK1E9u8n9DtGJNjPhBl/UinzqrQC1UxE1YP/9llNTL6WF
	itkb3xCrZcjvmwJECZQyxDPtluvoXSM7+CXTUiHh5figsW/4YeWQEgL91vkPFVq/
	ITYzGCxBw9OKqI1EhCZ7bQpQNa8OR5KqeyaYD6JGUJHTaRSd7jB5AocqD/oj9bGW
	aTZnb0BxbfpjEdaCzaU6/CBLx2LhDFeoD/YAVha8T4YtuA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951sns3p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:08:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b7ad72bc9dso39012921cf.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:08:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758035284; x=1758640084;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MPO+d98w+3iOJ7r1VX7ngwgKhIE+yDWZLLAhoG1dbAg=;
        b=d1SSItD4o3JKWZ+MvbhzaFmMC9uYLfmcmt+G9VyhuuGC9jkCAHUIJ4zV0bCbJh3bYI
         YBRkAWtKwxc0e3lEdbMg+huDh2s9df5y75mdGaNN+KgGOA4RWJAAMgsIOuNXav5p01nB
         L2cPMSrN81IWfynjC9wt/MSSaKejLRaCLpdNi6Y3MAkIJLfYfGLeRn/nJj/XZ9kaXwpD
         R8s+XF/mgFBsxmQAyA+0t1Maqhk2paZqKWpPi6cgi2eAKacSZ997yVK8peUdECRXsOaD
         Rv2pxZw6LI+6D1VMos+hL++CohMcfz8tSjpAU0/KJX0tfHCep0LgGPY4iZhkC9YhILMz
         L2MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxRT6wgDJIo6cYKxr8FXO2lBMjtp1jXLctuXJCTadhnGY4fzLrrEXjJuqXON5CV/4ftVdfa/JF6/+o@vger.kernel.org
X-Gm-Message-State: AOJu0YzxQSMZSIHhb7oPJKKweqYbaM4V4CL6P3V1OVNjiKS4NYhqj3Zy
	gtdeXivWWJ+pMkHfMEEdxPjZVwH1CMAo4h5wKaQPiJaRNGvpWNiyy7dR4VBzDbdWa53NEu+ld0m
	K3UEzopDg8hv9FNfCfiJvrO3Vf+Cfg6xj/BX97L54+Lkfl9wCMXCZyzgtEIHvdt8s
X-Gm-Gg: ASbGnct11bfWGRbxfoGqehRwDVbtFdzcTlhHVi8JgAGfbsSLykiCRNRwyFZgvWVHTE1
	8p17yAzUaduoGSvJk9DZywYWuX9cB3tZ5saOistYBnbq87F77mc4bB2FrXNQAdx3//a5iCJQFk6
	VTI4pz0bO0ECdlA9keEuaDXV91jEcMR4ZeMQLe6lnaCCvbcgYy9VGImRc/3/lDBQlcwB2ZoZRCq
	k9wLcQojpEwZdQel+SVUewCJ5QU0paioosJcb7Cx5kbhdrMuwWfWjshdBa+TwIoc6A1kO2yf3Qc
	spEMGDMD74DUjvvmGnwApW9AZdA+ntMPNE+LDLY1cpMvOC4vAG3StFfkWa5/mIhEKSR9FNEoshu
	Ik8b/BjPcFxprOIAVxZ16Cj1kXJbgCgFiVUDtif+VxT6XPpK9i41D
X-Received: by 2002:a05:622a:1a8b:b0:4b5:781c:883b with SMTP id d75a77b69052e-4b77d111997mr260538741cf.73.1758035283723;
        Tue, 16 Sep 2025 08:08:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGrACAfwl8ZeXemoXPckpMD2j5mK+zZ9+PVxetZdWKuYlRe0KBFSwXVAvO+6fqdZftYcLUzBQ==
X-Received: by 2002:a05:622a:1a8b:b0:4b5:781c:883b with SMTP id d75a77b69052e-4b77d111997mr260537811cf.73.1758035283070;
        Tue, 16 Sep 2025 08:08:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e651919d1sm4559897e87.126.2025.09.16.08.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:08:02 -0700 (PDT)
Date: Tue, 16 Sep 2025 18:08:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, konrad.dybcio@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jishnu.prakash@oss.qualcomm.com
Subject: Re: [PATCH v2 2/4] dt-bindings: rpmh-regulator: Update pmic-id
 property description
Message-ID: <6oyrycnarpfpsguinbxur7bjltpvlhyhowzktetqk52zeabvf4@6fn7pnw7aehh>
References: <20250916-glymur-rpmh-regulator-driver-v2-0-c6593ff9b4be@oss.qualcomm.com>
 <20250916-glymur-rpmh-regulator-driver-v2-2-c6593ff9b4be@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-glymur-rpmh-regulator-driver-v2-2-c6593ff9b4be@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c97d56 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KtqaayFS73-macfLQeYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: 7CfvypSzLNAyqZ8SzJxzOm-6FscunpoQ
X-Proofpoint-GUID: 7CfvypSzLNAyqZ8SzJxzOm-6FscunpoQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfXwPDLleiIzEU/
 a2VKTPJHzPy5NLG24zYZKYfEsuk2AtTGmtgT5hJDy3B/MeeGmXsRZweWNL9jvmhGd/m7LmBWuOY
 8RpNSFQv7etrAa0hk+e+HDd5XtSnh8OJnbuiU6UAz0RFMPkI8jP4yIkOjxBH/ZFyhhXKFiRAkud
 895KYJTQDAXZz5L+QQ153UmoWwxrtMAYHPsWfxxx+LwF/ep4ftpV/cQh1y5u5aBkFdGC/hXKpLX
 HzPR26sq6MZ/RuJ2BQ/QQALsV+GsDwM2eL+GoYkgvdsZjfs924MCL3x5a6Y0Pynln57WT/2Uhjx
 ue9IU9lj1eYOQ+3bLfnfftSiAMOowgmGRq165S498RyPhGTmhtmvzJBcyPwagX0mRRZieBprcWk
 q1Kh9h1X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

On Tue, Sep 16, 2025 at 06:28:53PM +0530, Kamal Wadhwa wrote:
> The `pmic-id` property previously accepted a single lowercase alphabet
> in the range [a-n]. However, on new targets such as Glymur, the
> property uses a new format: `[A-N]_E[0-3]`, where `[A-N]` represents
> the PMIC ID and `[0-3]` represents the BUS ID.

You are sstating that the property uses a different format. Instead you
should write that on these platforms there are multiple SPMI bus in use,
so pmic-id needs to specify both PMIC 'letter' and bus ID. The proposed
format follows the cmd-db format.

> 
> Update the property description to reflect this new pattern format,
> matching the updated driver implementation.
> 
> Note - Old format [a-n] is still valid and will work for existing
> targets.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> index 40e57b10ebbebeff130871b6d978df64111b6f29..40ddc64577e78b5c0dbb7b4e8893a08e8b37c92e 100644
> --- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
> @@ -108,7 +108,7 @@ properties:
>          RPMh resource name suffix used for the regulators found
>          on this PMIC.
>      $ref: /schemas/types.yaml#/definitions/string
> -    enum: [a, b, c, d, e, f, g, h, i, j, k, l, m, n]
> +    pattern: "^[a-n]|[A-N]_E[0-3]+$"
>  
>    qcom,always-wait-for-ack:
>      description: |
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

