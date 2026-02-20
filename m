Return-Path: <devicetree+bounces-267046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHwqNgKpmGmvKgMAu9opvQ
	(envelope-from <devicetree+bounces-267046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:33:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4910D16A146
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 19:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 357683017C39
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4400D366545;
	Fri, 20 Feb 2026 18:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J9Y5cBt/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Oe2SscA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158272E093E
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771612414; cv=none; b=rTSSn7fvAIplIUcX8aJVk2tWLIQbabnDFwayonP8DeHVIQTRijlv0TdgDx/xSPAenzSolcNapbiy84x76/J5PgEZzcEv5FjOurrss/DRXo0FIm/8wuxe69Ygcbq8ko6TxCM3q9TBxM+aGGeUi5/UZNdRHEzNFyl86o3P140HlKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771612414; c=relaxed/simple;
	bh=LFvspGi/tDefWyw+nsksXELhmNOcoI/OtvzWfss2OOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ep/ttEfrCX+KwCjB9klbG1cay8dxH+UWaGfgT0Qidqnx7o+/MT4ykVI7i/gjCy3s9/Fi51g5VIxxZgQd1n1Frtb0MP9Q+cG5hKQAMRjY54FgsBY/8/ROO4zzEluX033kYfHjZ4qzjmehX9Bj5HmHbcipWLXGjZAR5Mfoc4b+KY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J9Y5cBt/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Oe2SscA4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61KFdQ161851285
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DM3O2EdgdrNeeO/4bZRoyWeS
	ODIoky6PAKkJTTshZjw=; b=J9Y5cBt/7J7mlj7jpYs6s8gGoguW2AA49oAxLVmr
	HdEGpQV8GmUhi/vrLhSiO12jiG3dXR9xB2wFJ2OQ+22gsPzLwtPBhWE5g249N9Y0
	RFMz4fTXLVSvMU57Mrqk8hlAUSBX+XQ0xqWFfTTVEXfaC2Q7ImGYs6a5NT1GmE4k
	jCsX5ID/2DYKqBe1K0/jcNo7Q1UptWyHrlvd0seaMuYdvJwxdge4+uZ/8ex01G/V
	YZ3egvophfiFES2fQM8hyHdmPwlsbjJXgXOFTgpoxNRMuE+bzz1AootW/TBcehxx
	15yIIFV7CbLdTpZ99S7qpz2uhrc91DtTInUKS6rx3b2cow==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce9ngb3g0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 18:33:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb390a0c4eso2868567585a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771612411; x=1772217211; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DM3O2EdgdrNeeO/4bZRoyWeSODIoky6PAKkJTTshZjw=;
        b=Oe2SscA402aLuPJCvjo+HoxVe3kXrOVjLEQgRjz8Px90qWfX+35AfyB47eK/dGlr+N
         8P6ypQmFDTAhVdVWcRb0XW1nxlfG2Jk0cKC5HgXCfGNvU7ct0Y1wMU5n487KHkK23qG2
         bE+qcKxeidrogS38F9YZvtz21BWLGnf3JKExufcpye0GBw5/+fcgxJikb4TqJets5+BY
         ISSqq10BqbtoK4hUoa5bBCuflDXsRcAbCDc5QrNfLpRjBbqT6BV2U55rxHXy5c0RZIcz
         SH6gZj3fU06yT5Q5W+KFyMwSKAOKIJ6wQlhQsp8bGPFPgBfzm19fbP3djkX2kTK0kvgc
         8CoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771612411; x=1772217211;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DM3O2EdgdrNeeO/4bZRoyWeSODIoky6PAKkJTTshZjw=;
        b=f2qThKcXgcjiB7oqpswixQCUc43saIqJUEG/wF3jXAvXrJBzvbKnODZO1II6TQBJrt
         AmZgXCQXdm/INMn0F87r9UWnLfDz3V0tMWwBViuq084QquorbfdmkH/ZMc87hLI8i1AC
         3+pvUDejaXfGEy5uOAHOZbQwKhMwMCGNAxnAAVBxS3rpd23muLY8rcRwZLQh3ZWlYlxg
         MaiSAE2piCtVp7CW1GGhKGyiyQFS6RwVimJ7+uCMewwgoPmbjMnhjTiKkymnxhc4+E9H
         TH2kf7qY/HSAIUArjLPpWIlOOpx+BrwjI60JEwRemkjegFJdXuyhTGEwYG6+uuCAfcnP
         28bg==
X-Forwarded-Encrypted: i=1; AJvYcCX8UgL3BvRIFWQ78mY3sj2+tgQch1XrQ8THds1O31ho8jOHSyBbPDhOpq0ch5aFOkNosiSz+tC8jGCs@vger.kernel.org
X-Gm-Message-State: AOJu0YyMb7erqghPUw0L6MK+lsonm9xTWGDeXM+tdPckeIWsP2TT3aA8
	ajrP/6WqFhcQSwBYMWogvRbTgM5F3gIBK2ApmTHTeBwwB3QT1cegp628htK+t/pBlBt7yDBHcrh
	8qR1Zl4XLgHuGe5aaANAsxOt8HlOW2ZIv8SmZzO0TMRZBNIRASaYq1oKHXTg5Q7Vm
X-Gm-Gg: AZuq6aKLbHE2ZZZU+8JQud/udxBqonf3f817S18F77IlxmK7Qg3vo1ptHTKg+QpvGAQ
	seGRGkQDjgkiClEDgcf2KxZl4r7sngmcWmgtpsEzayx8KP6gHm6/2V1unKZLdI/kyW9ajYne8v2
	YbNSKkp6jDiZiYFx4YPXNi3L8mQJcF/9dVZMevkTIDkO/9MMWoMI2Ic0Jcm5u60IEc30oDOC/4/
	OgSluWVqZu9F74gAkxV0V6Agdy2JPdjzEp0pr5A8taBH72/lgXXMHVENyFYr+R+3+EOqpPvJurj
	6aUY6xkfXCy40Ao3MFyUoJQALU/7oSoWyrKbU4kzf/SU+upBAJePJL1yZxhMoJv1pXB4pYF7LJb
	1f3kvlfwoqfeCyNZmW5SwZ47bjvsr4sBZlKW7aDUVGRRGLWzH8bZZEOl7ZlDEasTbk0PDPy/D8o
	ismhSp+eFxf6xKRNXGsBo3bndP2eR8K5Rl/20=
X-Received: by 2002:a05:620a:4627:b0:8c7:f79:bd7d with SMTP id af79cd13be357-8cb8ca7e3d6mr66617185a.62.1771612411189;
        Fri, 20 Feb 2026 10:33:31 -0800 (PST)
X-Received: by 2002:a05:620a:4627:b0:8c7:f79:bd7d with SMTP id af79cd13be357-8cb8ca7e3d6mr66612685a.62.1771612410668;
        Fri, 20 Feb 2026 10:33:30 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f570709sm6201805e87.41.2026.02.20.10.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 10:33:29 -0800 (PST)
Date: Fri, 20 Feb 2026 20:33:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] clk: qcom: Add device tree and enable clocks for
 Glymur
Message-ID: <wfn6e44uohxgcvs6z2kx4mqbq3hyhoispdqugwvr2hinsbwkmy@o72xvfw7medk>
References: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDE1NiBTYWx0ZWRfX/PS0gn37lU3d
 Zw3dpJgKcsLF2+FPKuAerGc1y1gKSXBT1MjYVbOKR+dd9BOPtQT2NJK4MskeDIV76+K4ILUzidv
 tQFUyAg+cxVo03Lkd2GsQmIZ4ANGk4So2WZ4EW0UXTApU/s0Bb8xObS/ke5ZsIW0J9HiqKRCI6F
 f4dYEXB1/HqDJddffH7Yo64O1VvQL84eXsoTPs4IXudpzuN03DJCEF8ZJZ2splCnQuQ1GjVVlfH
 PExrlCFJhJOaIpjOfMT2jNJgjcGAjMhEBUeVykhve3TdiTgTvtNTDYMrIjRTMzUp5vnWrxbM9w0
 70kyUnnp5MGLeHR2X0aw9MZflhqvdFVxerX/F57IJoPXZqY/gOaPLfs6iothzBQOn82B/lb/gph
 5SNwxAaApFskmdDR80gkIzuvfiZ1q2cK0BTHZktISWQzO/buP/u2v+3ABKlLB9qp0IOoniBP33h
 1rVyEw7kqx4T8RsmAyQ==
X-Proofpoint-ORIG-GUID: mcVdo8c6s9GrTQW-x1ZOrgS5Dzbgxj6T
X-Authority-Analysis: v=2.4 cv=Sbj6t/Ru c=1 sm=1 tr=0 ts=6998a8fb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=xYJxznMSnqBdsboExPsA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: mcVdo8c6s9GrTQW-x1ZOrgS5Dzbgxj6T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_02,2026-02-20_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267046-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4910D16A146
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 03:46:56PM +0530, Taniya Das wrote:
> Add the Video clock controller and GPU/GX clock controllers for Glymur.
> Enable the clock controllers for Glymur CRD boards.
> 
> Dependencies(Glymur DT):
> https://lore.kernel.org/all/20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com/
> 
> Video Clock controller:
> https://lore.kernel.org/all/20260202-glymur_videocc-v2-0-8f7d8b4d8edd@oss.qualcomm.com/
> 
> GPU clock controller:
> https://lore.kernel.org/all/20260127-glymur_gpucc-v1-0-547334c81ba2@oss.qualcomm.com/
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>

Nit: the subject for the cover letter is misleading.


-- 
With best wishes
Dmitry

