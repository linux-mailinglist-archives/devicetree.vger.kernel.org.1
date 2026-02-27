Return-Path: <devicetree+bounces-269209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKAbJw6MoWnouAQAu9opvQ
	(envelope-from <devicetree+bounces-269209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 13:20:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF241B7032
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 13:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 95CE63037D4C
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10C1D3603DE;
	Fri, 27 Feb 2026 12:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PnXlpHf0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WUMznOiH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CF8314A82
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772194826; cv=none; b=SDrCBAkzWtlG6lLKIldIoCkfvSJfGPxGsr48xyyzxb2OYkh6WMOZ0z00Cj3DpeMNXOmjE59ThsEuI7oI6SLEdySUYO1G13uBZibIc1iBGg2Ug0LC3/Pac0r7KofmUv52pUNkD3zHK9Y1V1mQXMXjNK1go6o9DNExtl6fXU9AMBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772194826; c=relaxed/simple;
	bh=XY8tyEJMSUG0siOYxOKBdb99wfNyMK6W1/X6N+eG7LE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QgFk+Xy3XGDWb223CuSv13G+NxQEYhCo7RYn7AR+YXDNnYzpp7CH7DB2VSLbTDtr1ZqtdIVnStleTFsmkUbqipmkEMt8iWU4IcYdfrVYaaXarQjGUVLb5MTb4AW6eTxcuE3dAtP0sFPhMN6bB+WemVAs7g9fG+6I7JKjSmEcI/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PnXlpHf0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WUMznOiH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R9kdnZ3946179
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:20:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qqsgJPaahabjOxXMpX3jt9uW
	d5AXucfkPodZFYdvoWI=; b=PnXlpHf0ZUVMqYOLfGGhpeT2suBU9GQTN/yuuu3t
	MU3BrQnwZS/v8gyU3OsmZBkxxBL/kt5XUGVuzFAbvWJOSt+Eu/8sL+rtlMg0omak
	2vV9Zcs/zZ/7Qc9mT0MAvSLgqVS7hRLO6N+5DzdrfNweGPGuNKox7GwgAcnWzKQz
	+xwFEbloBtc3hJopP67ZieOodU82swKrPm9siAggRT1S64rXthkYQE4l5rIvbcOU
	ZHrsiDFKrKPgNx/Q6klmqoz/M3cYOU32rC0BTYVeGom4/WNI0/FvDGP2DzPRSvDn
	bouMJm8L5/OrNpufRRHTN4IhwBoGb+2IIlpwfa2Ip3TxdQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck8x88ep5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 12:20:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c711251ac5so1495316685a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 04:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772194823; x=1772799623; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qqsgJPaahabjOxXMpX3jt9uWd5AXucfkPodZFYdvoWI=;
        b=WUMznOiHXgz1whfJg5sNegRdD6Ca7Nr+q2/FhrTnqLy3Sw27i0kGsTqptP88+58gCt
         59gw4QnDlNpWR+QY08YdNxAIoUYHP3XQ6peZzfIVWOPiUYSut6g0GneFYczltNiyhEC9
         lry+QYR1d+bkgqUVMpZhKJYSt2vHe9/6GuQOjvb5Wu6SJyz8X3gmt/FrRbsGWlX3M9Dt
         QBPE4C9p6mpLjTxwuSwlsjNd8k0rQ7CenQCyA/48B+gOr2IfOO47l9mKYUFoB9VSvUyL
         k8Ymwpvto23SZc00s8cpe3hGOzp2ZhloytNEoaypq/J2XdNoolMoz5iLSmE0weLIk+PS
         K6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772194823; x=1772799623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qqsgJPaahabjOxXMpX3jt9uWd5AXucfkPodZFYdvoWI=;
        b=LIxyodF8v0SX9DxfC72ghoXU7MOx97ZGO1EMnzjactflOdcWcawFSMm25Qxbzhwjgs
         w8pf2XCX0O8zeAnI5qQCrt8flsBH2nOsHcBHadtzy+48fSFJ7L/MdeFcFHICka1z2p8K
         Etx9nmH9xQa/00AcdELROQOs3cFlGjF+VZyM3F+d6CMrDvIvAMPcXVtiYRr7JyxqwqfF
         EekV3WVJloRXpj7SmekC4paSt1tJnJ/D+dZcPVnzqROTIU9EnHCPYi1QAwnqS2Czf6I2
         BJWxDellQgzcMNJLqHjxdvX97Jg2rPPBvgwnBW1Adkt55MibFL8yaCtmx3XAFALqY8tM
         DHww==
X-Forwarded-Encrypted: i=1; AJvYcCXZcn2wm9bkfoRYT7ip/hzreqPDOUQI5pN3EXhVI0WVZ98JZEoRi3On5JuxiccxTPCTULwkXzEI1CSp@vger.kernel.org
X-Gm-Message-State: AOJu0YxgKaV79EqjvyUBnjKSRFxUb3ZlCnQsP+CYSJi2BgQvDbyINCUd
	47iBlsbDl+TCc89U6wyLUznGr4wn4NF1GNGnlvFNKB54mnVKW4fY0QpLQtnaq4shJs/NEFhy6tq
	G/5PRL1gyMSpiaUAjfSbpKtV6y+ASNGU5wYGMHgalDZ0mA/ojfrkqpeo98joA9LeX
X-Gm-Gg: ATEYQzyP3jzpnppqkoGlABRMbKepKVzN7tKNYlL42JG98jXFeLlRMnssXP1oy+AeeB5
	3Q4SBFHCaeMa3zABgT+UhLM6OznPzlgXuarcu+2wz+lw1c2LgWvYLWebc2FyWBZN9j0pZgUWGX1
	Cm6Tmz3tT5kKev1ChLQvPAR9JHixVL85RXb13egYbw31XAwh7d2hONuzhpsicL83I6BoZUeqgVE
	HBF/DMKXcbI9QdlgpQ9p20nQpXfCKZHmOTLmg1MOxhiTV/kbziYkAFnQdiRt/Kh1wiMojGFgj16
	0dgeo+8DymH1Vmhu3lJokfTe9DKbbsUZhPt9N+alw0QhfGq7pEucSafeyt/VsJkOM3syFPjyF+8
	F7LUiRS+TQYfo+4c5toK0q28wvdrm5DR6/pofvIlplwqxWj4xLBpFRsSeGod3MwzLWRpGM2E=
X-Received: by 2002:a05:620a:3952:b0:8c9:f8e5:9f0d with SMTP id af79cd13be357-8cbc8d9f948mr304296485a.32.1772194823036;
        Fri, 27 Feb 2026 04:20:23 -0800 (PST)
X-Received: by 2002:a05:620a:3952:b0:8c9:f8e5:9f0d with SMTP id af79cd13be357-8cbc8d9f948mr304292285a.32.1772194822474;
        Fri, 27 Feb 2026 04:20:22 -0800 (PST)
Received: from umbar.lan (87-92-245-163.rev.dnainternet.fi. [87.92.245.163])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109df86bfsm1796981e87.61.2026.02.27.04.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 04:20:21 -0800 (PST)
Date: Fri, 27 Feb 2026 14:20:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Zijun Hu <zijun.hu@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Zijun Hu <zijun_hu@icloud.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: glymur-crd: Enable bluetooth
Message-ID: <c33hbvbde72cmls7zi44wj46dlvwflvul7ukreywd67izhwp5g@owuhd3kuwz4i>
References: <20260226-bt_glymur-v1-1-838fcbfaa767@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226-bt_glymur-v1-1-838fcbfaa767@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=WZwBqkhX c=1 sm=1 tr=0 ts=69a18c08 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=+WgfKLcscl3VAWRHYO56eA==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=IaKb_ughYWkuG1P8dkoA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEwNyBTYWx0ZWRfXxv8SXuAEFKJW
 9aRw5jRLoinO1unNFZhw2bSs6KkQzJEfVJndkwEtes6fFbVD7J2pvIOpWk4+UvZxJNYFBdMhA/Y
 TYtLH+UIqhC8xI1WSc2sS7GKE8HE68JBOqP0Q+r81ghnyCMEm5eGVt94lLlWQ9CeW26qz41kfcs
 C3M11yvszDmQipgUh0rI71E91eSo2xdEwXNIkvl8Iccma3O7yUXewjGCiB/OQ2/FWUBcl3RGLZV
 X+hTDo2qISW9hHHbGWTN7vTJc6bGON797oi5eIzpdhVgKOw6REahnrdqs3m9gkSL99oBuMKF1Hl
 j3DPDq3kVfAC60Za9VO7zjRyZIMXVex51WbWNqxzw16+nqxpceBjD6DfD83FsCTz0MzbRb5eFbG
 muqmW9Sjo40X/gnNZOtUnUgxYhbEw7ysL1qLHmDdUEWO7n0NovACUkJEACv4O6qsciSfaKBiU6H
 OeseGQUclzS6L92HRcQ==
X-Proofpoint-ORIG-GUID: kvJ4LIc9I7_kzcY-sn2pi7LWka912MZb
X-Proofpoint-GUID: kvJ4LIc9I7_kzcY-sn2pi7LWka912MZb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_CC(0.00)[kernel.org,icloud.com,vger.kernel.org];
	URIBL_MULTI_FAIL(0.00)[qualcomm.com:server fail,sto.lore.kernel.org:server fail,oss.qualcomm.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269209-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3DF241B7032
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 09:31:16PM -0800, Zijun Hu wrote:
> Enable bluetooth WCN785x on Glymur CRD.

Please enable the WiFi part too. They are two parts of the same chip.

> 
> Signed-off-by: Zijun Hu <zijun.hu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 85 +++++++++++++++++++++++++++++++++
>  1 file changed, 85 insertions(+)

-- 
With best wishes
Dmitry

