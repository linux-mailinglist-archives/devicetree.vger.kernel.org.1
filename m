Return-Path: <devicetree+bounces-273489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KRJEe4FsGlAegIAu9opvQ
	(envelope-from <devicetree+bounces-273489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:52:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDCD24BB34
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 278F930A4AD4
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2574F41C31F;
	Tue, 10 Mar 2026 11:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EHVsvD7J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Jfvx4gPB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFF03ED119
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773142239; cv=none; b=IXV1bDUMl2dvMa2/ZzPZtWVal45xvLUDOcgq+++LoBBqlfx76bULfADJ8sWrz25LyEcMTxFyHL2jEjgIHLrMBjhiL6y1O9xooE61TrJjfPvrg+mimj+Y2yRqqXFH8SHMRREIBThvqWdg3Rs2K+D/FJoWc5/JvihkJc6idXILeQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773142239; c=relaxed/simple;
	bh=rxSfCPu15s9VzoYntO5I4c0FGp6C+hu5eCM2/4zVLKU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=lJjDMA5x9ppdzox3wrq1D6HBRaPmpdqIIh01mwSadVJQl9EwWZZ0Sgo9+0/tjBHVZrkvEkEhIkUsOjOydwp48uS2Y/OrVzwe1aePIq+UUmT0tN0sEXq1NOLgxhxt4e1DX3V3ikx+JjyeVmDGLSnuD57+BO7Uh5CCh4/dZn/zZoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EHVsvD7J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Jfvx4gPB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8wuev246776
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:30:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PH0gR2C2JBLuCyw+PmALJ00n0DdupIPY5smGuX3CWIM=; b=EHVsvD7JmhrZveu/
	5b28WrhGbBzqHPgiBYLRmP8NrdAodhfvCXM4Nago7nCO7Xbp75Vvkj3XadVLktPH
	2VzMKV8Z3IdDoBsfeXT/8qJhVPAukNBlmTYeteuCMczl8xvX2a/ThQT8W9SI/8ir
	NoPygLXu8W8Q5c037VaOUFFBikFDrFQW6RyqkC8MkIkshVW9/8L/KpMeHB6XhnPo
	gRI/syJ4YYymbOiqjLFWOHp3UkO/dDoi1ceUBqQkLn4wlR648i/8XQ6wuztwjd5Z
	cTeXIevKg5g0ZKRFHsBc+xy2/Cy3XjxkA71jnPik5C55UCw8Xie2UUX6e8fcJZJe
	olRAdg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct88028qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:30:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd97debc51so29083085a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773142236; x=1773747036; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PH0gR2C2JBLuCyw+PmALJ00n0DdupIPY5smGuX3CWIM=;
        b=Jfvx4gPBYVAMPpA++jMlGzZJgGpilWewN1hUrR8BpZ/VHWM9EbaFP8Pvk2iMKuqNtD
         0m9vlWaXFzA/jUJ8nC2LyQsZzqL6tsOYibkPV0kDYz4FQIfs66435hdOCos93RQd2eUp
         N40MmLnasDON6F9CyuhiRe/6R09dJftY7qOD2ve6KF7kx4neYsnEfNaj3ZLjaeyQ+Kns
         HTshs1267xVzxz/pbgkCFJOIRXF3hiSj1EKBeWrWE/uUOE3kXB0skXb3QcSTxr+p8WJx
         FqzPlKApvLk5LitqxZP6dvbIzvC2kAF9oRsrybpEco+Q6l8CV/G6OMtYoWnWJiA5Byii
         gT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773142236; x=1773747036;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PH0gR2C2JBLuCyw+PmALJ00n0DdupIPY5smGuX3CWIM=;
        b=j4mEu5lP3vntfbdhwwWr4kMeVRGNvNfYdck5FKhxVCUngE+gZnxetx8ieOWhiiw3ss
         tlFNyupkBK3ZV5tYpH4AbOGy7hx9YmVnYcHdkErHGXIqInsC3eOF5JAa9W7kyzKOEJcg
         2HhN+sEJMUFwWH+QuOVz4ygv2GpqClwJx6BxKFj3xBFDNTJznhFs32U8LpGq/XlAxtA1
         8b7fDLkG+TCPSElq5A77B3S5snzPXMYPSfom0Cy871KF7VH8qW8gxGRA3cfp0i1043LQ
         D6UI1mMOpsgz9B/cMCzSDCRPxML/gMFwjIxRE3geDA3sFKXpFZAl1r1IcUDJBlVBLX6Z
         2cAA==
X-Forwarded-Encrypted: i=1; AJvYcCUWPOeQqPSdTMzhDXUDmA3aWelfzozOgLqVw7opyK7dawsxf1Q2hSehKkTyvPsHRDlchHiA5F0NrY5E@vger.kernel.org
X-Gm-Message-State: AOJu0YwG0YIHWrAoaTE6UUElgwtxk875hMhT2W54xawu0BVAgys89yzM
	NyhfyjIn5Y24ZAWFtUQCjuPk3DU5umDWO9H3qLJFmAVehEQbUkSWRG9cCimPy96iKKmkRJI+/Y4
	F19ou1urDyRd3c8YVDvl0McvcbJhm1EyTqRfwPohwUF7Ir4okKX4fgCqoPvnLN87Z
X-Gm-Gg: ATEYQzyWCnIPEvVtt1MgBECUzIlLGe6ruR5jkTassPBgof3ZbhfD2L6bPiWkz9hfLbt
	wwdLYTNJlAt4+r9YE1kHqfN/ksL98Uw+PKi/LyQx718CW4q+EKc6AB9EyRyqLTL7VI8xrrP0E1F
	8QGNgrecMDm9yXRkIXk/xa8ZRaF2iivuaMg+OQe0LptMGK8Jt2Yzf58Qm57I7Nbz9mU2skaabRU
	ULCmTyQgWCSQu5PT9ckD8pEZNlOKezsFN9zS/8bDxuDFzLVZvWfnHQ+1ln7LG+hDOktoi6KPvAE
	4LdfDK8TEOng0VIvjANwHL7bkwVoMMNkOod8rEnPPXwi9TWqMD6QNJJIBmdlV57Cnd0xUIzivE4
	4Q4Rqgrg1Sr1AZeoTlykZnj8wEmqsxhluxT9XKk3VfPt7BHr4kp8rYmDVdj56aRAC3elvgzucec
	VJ0eE=
X-Received: by 2002:a05:620a:1a83:b0:8cd:90f4:326d with SMTP id af79cd13be357-8cd90f43559mr441523185a.7.1773142236112;
        Tue, 10 Mar 2026 04:30:36 -0700 (PDT)
X-Received: by 2002:a05:620a:1a83:b0:8cd:90f4:326d with SMTP id af79cd13be357-8cd90f43559mr441517985a.7.1773142235620;
        Tue, 10 Mar 2026 04:30:35 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef42ac6sm475964566b.11.2026.03.10.04.30.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 04:30:34 -0700 (PDT)
Message-ID: <3ecea1c4-cc2c-4a58-b62d-fbba2927fa54@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 12:30:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] pinctrl: qcom: add sdm670 lpi tlmm
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20260310012446.32226-1-mailingradian@gmail.com>
 <20260310012446.32226-4-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310012446.32226-4-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5OSBTYWx0ZWRfX388E9dhcz1nM
 d1r2BOzKBVTaxArzD8Icv2qfES454WF7nrGqP3zW2/CvB2bveYVUtX2FolnmwYiQWhSJ7jJcRy/
 nAcsyqwkxkuqQ7rK/LlTmhu419E5oQsjIBAYELxzoEFC2mZVE7Ro9qQ+aRcNmeWmR7ewdxnNQml
 dtXn99eNM6X+B8M3nD6DA8FfFTlMChvdfpqZSZTuGC5tG5vT5gG49ydw96FLO1SnNp5Td3KQ4tB
 r4EafEI5YtM1cfAjLr18HVO5YRij/jvEkpS9i1nd9+htKjKPKQRCqQJIgCQGViA3m+w+ZAh4sNS
 Dq1f5m4fgZyDi6DmDFZNvfi1c3r7eX5qXRg9XCu7sd6Z+jJPPRr7h2BAxRFBAMbY6suUdb47NPW
 Iqwwed3CMyQKTAMScEzwn71KLpq8H2feSb38Opvsz1WkDPQhKguSDyCR4Il1M2pJrW91Y693hTX
 VPBMkQ56Kb8GaWBvrWA==
X-Proofpoint-GUID: ZpdmW7Gp3Hv0EIDtDcn6erM36gx70IXU
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69b000dd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=LBwg1sn3Q0AahYvMUeQA:9 a=QEXdDO2ut3YA:10
 a=Ql4v02ufxVEA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ZpdmW7Gp3Hv0EIDtDcn6erM36gx70IXU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100099
X-Rspamd-Queue-Id: 6FDCD24BB34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-273489-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/10/26 2:24 AM, Richard Acayan wrote:
> The Snapdragon 670 has an Low-Power Island (LPI) TLMM for configuring
> pins related to audio. Add the driver for this.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

