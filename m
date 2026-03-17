Return-Path: <devicetree+bounces-276736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBN3FMFwuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:18:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3AD2ACD84
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:18:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 41786301AAAF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 655273EAC6F;
	Tue, 17 Mar 2026 15:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TVzRsgYt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YhaMXh96"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC3B3DCD9B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773760015; cv=none; b=SgEAzdUHEDwxPakieniP9yFh3f6atjn5yyk99yuRN6B9KMrXfu3qx26pgsMEBZ8z4fPvN0DnuUnivyQ5swK79EHzc6ezDHKGoUsSBrEca2Cj1puN6QnBYMnCJpqvS4ttOsnxr6nwH1xYqa1aAA64JHX07pgJOK2AVBoMwSIvBz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773760015; c=relaxed/simple;
	bh=eSmMrMrnVMKz1nRXC4PqL+mXVL4uTd82t9e0KsNYTdU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JnnpPLZ+oJ/+SPYqnSuZQUZfSYmJyxJtUArlPGzdEyBucNTX+WAjHJ8IvnbH2JcBqO+QUMocijskcNAgdB5FSMa9dWRtgJTRd4hJDOGCmjX/pBnuEtD2wPTIEZ03U9193lDk9mzvd/Kd0vaac2XTcOOJT0B6YZBjmc2QRUsg95I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TVzRsgYt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YhaMXh96; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H8mY473102514
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:06:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	viuuphi5xmv4GBJcFw1fL3vLWW/8NotINZPLyUiZJJE=; b=TVzRsgYtpC7W2UrY
	9sz8p/VU6fwdgPdLOeJPyWrSxewZWANWaFkneIHohYj+G6/D/8gyXzePS3N5qiC6
	TeniPNu62TlEme+6oiqvHb3VVRmiqdpBDGkiQxc5vFXKckdVG6VF/uZarcyg9TN6
	xONOqaa0MK3ro5cOJ8g2lvXxBoJRmtkyJ8iUKV0qq8jw/KgheQAMpMZHn53+H+Er
	iUwvxPTgTLnnCwO10oedgBjpt6oOcJsATPvURlDUXO0ZcshVPmtOm+N7bVIA3LfL
	A5ZBydTXLSc45UofS8ZYNS9a0gd+nItse5u0Xzg3n53hb5UrSGd2jTbv0dK+Y6Td
	kIraNQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxnb7cb59-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:06:53 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ffbef72dcbso1080108137.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773760013; x=1774364813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=viuuphi5xmv4GBJcFw1fL3vLWW/8NotINZPLyUiZJJE=;
        b=YhaMXh96KIxxOfHDWlfuv3x/6S4G2bRZXqD3THEbb2vFuAZUa7Zeq+YPF070OBt2N0
         M4YKJHM+38UI4uLxU/fYmKryefl6Uw/EAmkZ/ZhhvAH3uaExQJjMkWFciMw8fsTvdVHO
         QfZH+I5pXP29+ga00vloLQxb+Z1ftQ0yYEta9rPj20P6KHTO30QnwA3T6SHvuQIEoutX
         Os28rFq4MIhT2J/IupkGOzOnWtb2xp+z8yqPsjssojFxCCs3CHMCIDpvy/+eRslP9/dK
         39ZoxKMgX+eSvEO8Z2T3TJV5/SKarVbPBMjviOo+xdWn7GfEOvC/a3AMUcl6J4WklXAM
         JawA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773760013; x=1774364813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=viuuphi5xmv4GBJcFw1fL3vLWW/8NotINZPLyUiZJJE=;
        b=jnvixC75Z2Ss0Xw7PgfQZl134KIzoYlc+dU1tsHrh3FU9ettIUPMVvn16wmsVSGCjH
         EKgnz93fB3qdlf7dbZXdVQYuKF41WQvnnNftpeMepG8i4+DqzoqPEJ+ejB12kh1ocDH0
         7miPYibjyP2WzQC2uW5kdaut61BONH79Vt10R8l5ZR12PpUjKZkZkJtHjZYWTUGMTgI6
         BX8Q3QEw5FtL+9mF9wIA1LlN2yf/Ek9x/VbTssIwySI4NRSjzxOmbyXWyDoq002dmCE3
         aWCfU5DTJeuCeOmq/GyBMuItfANw/jTgrao88JDPyKbR2/+KgMNnnEsaG7e/wKVOfVkg
         oiEw==
X-Forwarded-Encrypted: i=1; AJvYcCVnte5l0pcHxqwgscvV56/IRRoq5dvfAzFs+dvMaNR1uq0RGQf+DIybWkzSE/6TWGcMGCrDt2OhEYvH@vger.kernel.org
X-Gm-Message-State: AOJu0YzvY/oMIEE0QqqycgwY9jS8YuOlETyvafCD5A8Tn8YOVHv0aJB7
	QIpif/yhH1W/8+Gfxe9eTAfa2M7agX8xnvgSk5Pe057e7hLpx9FgC1CsCbfxDTyjG24IKkfF2VL
	wt7FalfnmKMKDEMV6nLvc1UtPn3eJDMwFNm75wTzzF2QUTSh/4Gt+ugheHTnYdsn/
X-Gm-Gg: ATEYQzzPxxxDcoD3TNt5yU8+5DPSdjpq8zuwFv8aPKsGCKpZM08Ta0MYmeSAkLhi23w
	DoHgQDBcwniiUw+YCz13smpA51c3IfRgoUUjpaIjX4I+lw47mWn8k354vvbyGNBIe3vq7si6h9T
	rdTqMp/l13/znUiatepL8QXZZ7XGh/tokj+XovqgTQ4JJz6qTLB3UNt+IE20vhc49PisIsSzg7B
	oKtkrYdi1IgmcKxwIwDrePaxqQitVWeeOoHpttLLKOjJVHki7JLB1MdqJ2qBPVibDwnIXwVR/wr
	0eN8JAbEhTulRUd0BuNy1Xi61QwrVarAZO0BFqedeXzNkFjSedjknlDlHaPOy70NcztRJ4dnYRS
	1bWi7QgkMDozxdOV5OuwbOpN5W1GKTGXF6Nz0qHwwO2Fd0H/xu+R3mKAecK3X04qfAU4pTSxt1/
	SLAXg=
X-Received: by 2002:a05:6102:3049:b0:5ff:2425:a0e7 with SMTP id ada2fe7eead31-6020e68ae24mr3172907137.6.1773760012629;
        Tue, 17 Mar 2026 08:06:52 -0700 (PDT)
X-Received: by 2002:a05:6102:3049:b0:5ff:2425:a0e7 with SMTP id ada2fe7eead31-6020e68ae24mr3172873137.6.1773760012132;
        Tue, 17 Mar 2026 08:06:52 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667aecbe63fsm42292a12.4.2026.03.17.08.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 08:06:51 -0700 (PDT)
Message-ID: <ed3fdccf-d8b5-4f57-871c-8a9cb8676606@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 16:06:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
 <2f4e4cc7-2600-482e-88d9-d4b20d328a72@oss.qualcomm.com>
 <drcot4oxpea5lnpa5htrrl2n6tcc4ocxmb5vsho3ocouvajwlo@6ueabivtjy4h>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <drcot4oxpea5lnpa5htrrl2n6tcc4ocxmb5vsho3ocouvajwlo@6ueabivtjy4h>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEzMyBTYWx0ZWRfXxSZ1yDi6LWER
 GkxuxILSeQKcaXYzMTseAIHM0kvUAFftXQaq5eNGyAj6HDUyCgNBcIOExNnmPagtLryniDwBsR0
 Rh02PK8JypOn4SPTF0DXFe7+JIpsxFK7VFjLx6071TyDr66WnS4hfO2kWVsf2Sdv9rdLtY3qaQA
 B2fGivFCDMH0zu13oI4PDx1Z5qzg5GlUeFUumgmXkH6kGuD5VXULB1rLBIhzjPtrigGEkKnVn0j
 PXrGepOJvVwSsW0+ychYydO3YzgRSDbev/OiWBDCwI7WRPp2O7ffGiBs/dv7NXj/xK4fXRySqz1
 7K+AFprv5J9zM4szV9/hCqBa/IdX52wz4krgqPebXl08iztRFHfK3uBMeUHrR1gawdHSWlWI/MR
 weo4YZy6DP5/ZDWJn2HCKQ04CBCX04dzMYY/nVuF6BhWvyslwJ6lUoR25+Xj4lN39BIOmUh0YFC
 T9aPWpZhdFkJABukiKQ==
X-Authority-Analysis: v=2.4 cv=D7pK6/Rj c=1 sm=1 tr=0 ts=69b96e0d cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=i3U1ZhqbavsoaJQYhn0A:9 a=QEXdDO2ut3YA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: Uz1bL6kbTg1ckAYpIubL82GsybfMjrLS
X-Proofpoint-GUID: Uz1bL6kbTg1ckAYpIubL82GsybfMjrLS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170133
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-276736-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7A3AD2ACD84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 6:39 PM, Dmitry Baryshkov wrote:
> On Tue, Mar 10, 2026 at 11:36:26AM +0100, Konrad Dybcio wrote:
>> On 3/9/26 3:44 PM, Abel Vesa wrote:
>>> According to internal documentation, the corners specific for each rate
>>> from the DP link clock are:
>>>  - LOWSVS_D1 -> 19.2 MHz
>>>  - LOWSVS    -> 270 MHz
>>>  - SVS       -> 540 MHz (594 MHz in case of DP3)
>>
>> This discrepancy sounds a little odd.. can we get some confirmation
>> that it's intended and not an internal copypasta? (+Jagadeesh, Taniya)
>> FWIW DP3 is not USB4- or MST-capable so it may as well be
> 
> DP3 link_clock is sourced from the eDP PHY. I assume there might some 
> 
>>
>>>  - SVS_L1    -> 594 MHz
>>>  - NOM       -> 810 MHz
>>>  - NOM_L1    -> 810 MHz
>>>  - TURBO     -> 810 MHz
>>>
>>> So fix all tables for each of the four controllers according to the
>>> documentation.
>>
>> It sounds like a good move to instead keep only a single table for
>> DP012 and a separate one for DP3 if it's really different

Please do this and resend

Konrad

