Return-Path: <devicetree+bounces-265434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKZuB5dUj2lqQQEAu9opvQ
	(envelope-from <devicetree+bounces-265434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:43:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CF813852F
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 17:43:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7AEC53005EA7
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 16:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B89C0361677;
	Fri, 13 Feb 2026 16:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YJPBi3KU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R3NE5fTo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEF629992B
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771000980; cv=none; b=JaO5b8DaxKCVb5UcFgB3ZZ3Hnc+EUw9tvzLLgY0/Pr2hsjOwpboJSwVEy8I5PU+fLy8SLpEengdC3qKc5da2GZ27tUOtH5xORUcCJ7lP91X5KE0J/nUW1PimRVIWDv1PbuLRdPLSrxZCfTI3fo53tXnco57z7QL37htp0edHWz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771000980; c=relaxed/simple;
	bh=RzlTtwDWjrDJzZilWWFNg7OXghugjWlOh3M9/Ztxbvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CAKiYxomGRn1WP2P+JlU9G2Tu2H0gBDgXonEQrBc5csRD46m4pS7LtlLlEtQsPPyodzfwtjMm8WVJZ0c5Z+1+pA2HaLY3a2r80V4OoNWWh/SaHkV+peRG37MQJC8AqUk+rz1+EL6zDdPvouFsj8DrYPQSwh3qlddVzmMKWJLA+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YJPBi3KU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R3NE5fTo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DFNiGD3424085
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:42:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lewca8eB4Pjse1/UPMFuP0dK
	n9xZNN2Qlj2RLnTN4sY=; b=YJPBi3KUdNNsDWljJriezMxxq5TZIMx4buD8/6Cb
	bl3ZUfde6HIAscRjsgEQz4GmSBrypTKVIcTgONW1L2wQLPX0yuGyVIGDBd2brR2K
	IBaNnyOxFZ2GvOCKU84IxYXMekk1ILMj8abFhQSYDpt7PflzxdM6AkozFtsfF+Cd
	V/knKSbNfx5jhu5MAWtxhZA3ISLxWhXS2mOfjuPfbtDXjQcUug7EzWX95BMDPTAh
	Y/PtnYl3qLIQu1+PPDW/I/qih+6r0PoRlVK5UzA53osRLlnCx6NXyW21+/jG2alQ
	4u7vkjDHa0XMbJjimz5rhJcsjg0vptXxmP8nOJHSFwoT9w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9yvrswdj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 16:42:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb403842b6so400538185a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 08:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771000978; x=1771605778; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lewca8eB4Pjse1/UPMFuP0dKn9xZNN2Qlj2RLnTN4sY=;
        b=R3NE5fTo0ZFDh9CGeIumsSt1rX8qIaH+tsUe+rsgaIy+l9rDfXcn+SrYnaWv4nhBn1
         6Ys7zEzzcuwBWj43aiFGdFzYxxpaK/qDq3k8y8GWR1BTu8PlrVt/X+d/di3dvYAZBw2Y
         1ZX5I5LPIV30MJkwyK6R3GScmcXEnoold95M0PzrGzuNPMcxxnHus3PnwzIGeSn+gFIB
         NnHJEIoSn2DTcsXoH0mJDEsZewcULvRzx5RBNbVw2+iODaHE+DXXTezrrfX5+3ybh6g6
         XTIPzxTULqO30QVKV+OdvwzYoZ6wKouTw+LvA0iv2Bq7kcOG0a1s74mhTw+2RD0zLZY0
         Wd1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771000978; x=1771605778;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lewca8eB4Pjse1/UPMFuP0dKn9xZNN2Qlj2RLnTN4sY=;
        b=GZu8JZiQNu0139IpeX1+LG5KXHPL88acUa/9RqkYsFF+9ByfAP7TshRgz/uaqX+ocg
         aAAoEjMd0Op/C7RcOi6SyoJq/x2K843QLmy6iFklsPYj+3QlIo0R/Coa2BzJXCPrnSo2
         1c3Fe9vUC6bT7tKPAVU3KLsQh3B80zIJZZin6MXbtGGqMxatTs9Dm4I6V5stp1A0GYIg
         WBzflmF+WspivsZ5HXF05NnGwlMaZ2tOx0Q5cgbdDcsFSYAI7QNKuA6V3lLUr6aOdtGK
         6zlFpMRhrgXN9CYSgyNufTAsLGLtTvAABmAZ/x75rpNOparsSfpVMMQpyeFwzeUuPIqr
         fMSw==
X-Forwarded-Encrypted: i=1; AJvYcCX0+ermDTG1UAq9cGccNsUOgwqOkcGjCpRWuLSMsudAQxK3LT+0c2O0pUg6E83zt6AmqZQKne5i9Pu4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv/7bKmP+5yxlceuKzIRfsRy6enT5KJ4u4VUJpiE9uR11wCyTO
	8xPb5+KJY6JOVsMYqxGenecAOZ8nosYUSphaoMbss5t/bb82CQsFWZrxgBxOHc9w/Xj5ywZb0ep
	aexsSDnrMdfHC6XRtEK1FG5fgNt0H6eOFRlNaIY+LPgFlR7ZUHhMEpU/FsbK4aH0e
X-Gm-Gg: AZuq6aI1+8jXl9it2/+zVmtPuG3S8Oq/mlnCRSscGSRi1lwuhQpwSjuc3a1cNNCm/RR
	QU9NaUsan6gSOAJ8EQt9PMYW5Y9UOXW1YgJpvj3O55Mp7iafP+vSZMcqQZLcQF3GJa6B7CGC6uX
	17iHkKkofIfXY81kujP9H3RZOJbAWpN/0bo4MnebUKhXWc9jbbzhsKLuy1CfPU+lOJWs1G/iR4l
	ZImoz37Qhgx2cxteu4zmANL5/Y88eh5x1z2AnCRzGvRikNF5ZVyuUECHU7NST8OHDNKIj5vd0OC
	sU8WEodHiyQtRtnWLYZFpABSjzprrOlAmTMQxtApsLEEJBFubHY4daCBmSAGlZOUF1fjHiEHF+t
	9E53Y/JFnf6TUT6+ZPwK6lNaomkieGw/H1LQjZKeBeJO3a+5TOzMqvm3KWTNfpq1jLzvdJArNv7
	ik3yN0nGvIU/Amw5geWILqBtyhl7RNt+tEBDo=
X-Received: by 2002:a05:620a:1725:b0:8cb:395e:2b3b with SMTP id af79cd13be357-8cb4229e84bmr285191585a.35.1771000977966;
        Fri, 13 Feb 2026 08:42:57 -0800 (PST)
X-Received: by 2002:a05:620a:1725:b0:8cb:395e:2b3b with SMTP id af79cd13be357-8cb4229e84bmr285188285a.35.1771000977496;
        Fri, 13 Feb 2026 08:42:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38706928d9esm15367641fa.42.2026.02.13.08.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 08:42:56 -0800 (PST)
Date: Fri, 13 Feb 2026 18:42:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] interconnect: qcom: qcs615: enable QoS
 configuration
Message-ID: <3uk4bsce7lnxmd3ryhutatzgprwze27d7zspaqybxc732asezz@uescff3ohule>
References: <20260211091112.3285626-1-odelu.kukatla@oss.qualcomm.com>
 <20260211091112.3285626-3-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211091112.3285626-3-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-GUID: 2Pla30nMIBmI-MXU3D9W9mxBbO8UTIPw
X-Proofpoint-ORIG-GUID: 2Pla30nMIBmI-MXU3D9W9mxBbO8UTIPw
X-Authority-Analysis: v=2.4 cv=LNZrgZW9 c=1 sm=1 tr=0 ts=698f5493 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=Np_ZfMqjrSSXuD8GcM4A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEyOCBTYWx0ZWRfX1JBYqQiwYhEm
 MXuCDSonnja3sncOTdv6l2Llik/Eh6ShG5JkBs212LZ3rVUlKNocQY6YaO7stPwDfuvXNf5YicE
 Sk2VJvv3wsqexXE9hThcCMfr9HETBk/oDxX9rLNtL2lO9pLPz/qcM1WhOqg/MIA/O37g+VpkM08
 fJIRiQpNfD3pkS18wLArVS3kuEGi//rAjimRBkMhdBoBBRaidh0m/FSUbt4ypNDdJW50y0NZt5I
 /E6VOSolzh7kme9syenWB/Xmh85UDJYxnmSA5FKPt+XnRRSCR66HqmCDIGFPaBzoW/JVkYoGbOp
 WzkMJdgxhxhswfznl+zfSbHm7a/stPj9S/1ooqvyQXHm4J9eabdoAeBdsnHlf24q9V5ST/+n8bI
 Ssq/q78uaUZlbVrCcXIiAlv/6tGtgo8oLSCtcBrKheuglDVXmn1M2NrtJLvXRm9toXygp09Kzk1
 3oIiUPyAyZaN5uO2zwg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130128
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265434-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 86CF813852F
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 02:41:11PM +0530, Odelu Kukatla wrote:
> Enable QoS configuration for master ports with predefined priority
> and urgency forwarding.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/qcs615.c | 247 +++++++++++++++++++++++++++++
>  1 file changed, 247 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

