Return-Path: <devicetree+bounces-261874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MjCDFrCgGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:27:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB90CE338
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:27:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8FA64301FABB
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 15:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6876137AA9A;
	Mon,  2 Feb 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EZoqAc+O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E01szgeK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4A137472B
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 15:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770045874; cv=none; b=fsLGtAfA7N42+o2H4/WDbmU4avkKSgJuFLpY2zPeGkeB5o/od8bP9/Zb4H1YRhdcLNJsgCXNvp1actfAupExyNrlxu6Zu5/j/SxO2amssg1z6f3JzVOww5N+x9FhoLFeViuhwpdVJ3tOuj2vjaIQCZkf0bG+MTFgCbrBK6cyENE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770045874; c=relaxed/simple;
	bh=vfT1tcLU7TlKpr9DWxg8Ld9JpOc3RsUi/2EutBZZTVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o/UL6ciqVNETZNED0WFmsB+NMYzLLqKS7gaHCodJhJlJ5kctH6tsokX8Q2+UiL9hcUCfB15dWKooczIjEUkh0RxRpsA6tXFUbzzMWJ5KQYLhtwQA3z3yJT1QjJaB1ADbiSnbnWJPaTYdCVZ4V0YUdREXAyxK8Lkor/Eez7YEHYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EZoqAc+O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E01szgeK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612CJSJE2884358
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 15:24:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xuAB/aSdQx719HfPcvH/r4Wn
	Qq2zb8+m9cWd9HNsaIU=; b=EZoqAc+OlFGnWvQy9qRTb5zu79/gJZgv0W/R5qww
	O1/mPEPht5XWaIF57donUqoYPanPKNkGDo05v3RM2H0hQYdwTCAIFO2tWhpqvGQl
	ZIe2JKdb2be+j/EeKRfekurTo4RUxc4UG9KqVpfbnO/yKH+tE3NQ7Q4lNPxNe4cp
	Xuw3UoEx8ChgCEcKr7FXys/EOhYWKjTdMhhgnYgHTJmZsjrDs6ZhQ3Jc+U87LIFo
	H3InlTf61RlDpXKaEsp9camHh76ctRtkguu5tIBjO/Fy75YFnNXR1Oc/yaXBKVfL
	jUJE/6d/RKonexo2M5fKdZ1+UrLLmjP0U8ucfuNoZ5UqGA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2uu3ghdq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 15:24:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c277fe676eso1378196685a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770045871; x=1770650671; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xuAB/aSdQx719HfPcvH/r4WnQq2zb8+m9cWd9HNsaIU=;
        b=E01szgeK/lJ0Na6h+b6LKAzAchhLuUaF5/4KmfomtVM32zbot+LvI3GENzjuyg0whN
         QNbuexZtj+RdtLDzKNcJsiEyTpkH3GPlf5cStaT0a/phtRIG6CH6lNru/RHlWklDc5/h
         tOepcuko0BZ8iHwvu/yyISrYZuFu6ceSvVSTJn80Fc9wKfQq5yiMkSZvIXg3XUIGFO9s
         5L7RdrTLgDFjibdunElFnj4uosgZpeyTPD0YsnbdqOyWH3F9fSZbuo49egdYjY+YkyyF
         zJSQEIGLKsKKnMUqO90Uqk0nRJQU/BY5NlL73r2k5ne23y83Lu4uoKLJhxmU8BxIK+g1
         YI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770045871; x=1770650671;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xuAB/aSdQx719HfPcvH/r4WnQq2zb8+m9cWd9HNsaIU=;
        b=GwEe8G5I9Ss422HHPetC3wGOmnCDyz/x2wMU2En0SLeVt+Q2k/7rpF6QFv/KGYAExd
         PozhCc+bQTgxpQXFaMlcISS4K7ueuKj0ZXWCmugvEXOoWAd0fv9/AMaYvbTk+ZZ2bCuX
         +taRhI16aqM5o4c8RmqPYV6SClIBpcIomJIkeDoxd4AzjpTl6hnhexQGUQ5EAAvhak6M
         3hrHPOJ20aSKCwceZuMuxAOxeq4uqmHgwkvsMWYt8iK16d9Oa9p6hTSiv8p3u7nSKaRM
         iIcrKvEazgLIbSlA8ujVYWNaIlFmDf6oG/R7b3h2m0pEQjoX5R36Mpq6VdpuYwLYhVCF
         eBEg==
X-Forwarded-Encrypted: i=1; AJvYcCXxGA7H6hI+Zjwkp/YQ2LFYtAtO4sdcHcDW9IiIQWyMLn9IZnp/4j1xMUfyWw0JfKIDkELIug6Pep0S@vger.kernel.org
X-Gm-Message-State: AOJu0YwirlvW6pgUvozpKYBBYcLT47oldA+ygn2JUPeoabd+TmCCMfVI
	77005n5R/vhny7zrcUPDPHN+6XHbXOd3uhazvlmWJc0Qfn9EriPAWWHITsDSa0cpztjQxItHmcM
	xmSf6/vdYWuqOgZH52rnJ5XNYGhywkDQz2iEHHQ2+cIZURflMW2rxnKo3skZdAoJS
X-Gm-Gg: AZuq6aLYJD46xT7MNJ9qAm2FQ+Y30E/heHc5cAcefVS8Zu+BGg4KUhyfN4lzeKfndSE
	K7KnSTuVe69VE91pjRVe9LIUkzAXP+aArh7Z+WL31VwA1Vtnp7d0t3LC+jPg2o6567d+xiuutbt
	b1OBdsRk0WJoEVf6lv/tKN0clFUAlBKRZTTTV0/1c1S07aByuQifLJdbAnn3nG1WogC/0WVfcld
	2vtBxv9J+INK8lcFwIkkSsnvqJZIOv34S0sdJZXsKFS/DNCIVTC7AbFZrS1jveXMwwswSoH3AtV
	RcaPqAui4R51mtt/yk7iPxPf7BGdrtSF32xg1KqDk4S27Lf8yd6G3sOQ1Sn6dqPWiCw70QFd5GH
	RC/xR0iaH954siYEhcVH0sXVm
X-Received: by 2002:a05:620a:7017:b0:8c7:1a0d:7d9d with SMTP id af79cd13be357-8c9eb33a996mr1226529285a.81.1770045870463;
        Mon, 02 Feb 2026 07:24:30 -0800 (PST)
X-Received: by 2002:a05:620a:7017:b0:8c7:1a0d:7d9d with SMTP id af79cd13be357-8c9eb33a996mr1226524285a.81.1770045869853;
        Mon, 02 Feb 2026 07:24:29 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132356dsm47121957f8f.33.2026.02.02.07.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:24:29 -0800 (PST)
Date: Mon, 2 Feb 2026 17:24:27 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <ulnt5ivsedctjy6shyj6sjlaa7ig5b44jsvvrzm5horzl2zkuk@37upvv5uaybx>
References: <20260202-purwa-v5-0-1f5a93578802@oss.qualcomm.com>
 <20260202073555.1345260-4-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202073555.1345260-4-yijie.yang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ZQM9Ot2PYwyEG1FOXCQgQ1wYOpStVemh
X-Authority-Analysis: v=2.4 cv=OrRCCi/t c=1 sm=1 tr=0 ts=6980c1af cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TSu30AdjdkAtlEphcj8A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: ZQM9Ot2PYwyEG1FOXCQgQ1wYOpStVemh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDEyMSBTYWx0ZWRfX906Ym2Jtd/f4
 03AK/SjGbkgCUAIF1XwRDiIPnPelqO+pN+/taES0QjgOaSi3/ccCAclYWhe7vQNzu3Ah5LdAFH5
 vi3echaYk5FIxpOdHXGvop4YZIb9BHeWZ31UqJMiRI1ysb5xcwfDh5m3efWkvR+g5LASmQmr9FY
 hsCuv9BLcIetk/XRNlA+9qMKuJxcGnAHQlm5pCJO4lgBXxFgpLIeFgqIU+QMuew3iMu3PCcPIHN
 blQvYzyhz1vw5qaFhFxFnfBpqEsBNF0Ew0uwmcA9iAeaenMbbhEI3UzTCNdgV+JboR6x5eJbIFo
 CKFr2IeDUEIeZkOFEx5LJJN/VaZiFJ5odQ4ka05sTFvMGRzyKp0X1rV/CADln7vANYz7APp6Mbi
 o9DHCQ5uwpzKQdjRX0Yw29W8sYJM1SWOKBqF2LK3DDSjx/eoVoJre8WfB2Dh8sqGiIGuKOBwlnX
 jkYg4oPDKo0cdjB0DMg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261874-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BAB90CE338
X-Rspamd-Action: no action

On 26-02-02 15:35:48, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Purwa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
> 
> Make the following peripherals on the carrier board enabled:
> - UART
> - On-board regulators
> - USB Type-C mux
> - Pinctrl
> - Embedded USB (EUSB) repeaters
> - NVMe
> - pmic-glink
> - USB DisplayPorts
> - Bluetooth
> - WLAN
> - Audio
> - PCIe ports for PCIe3 through PCIe6a
> - TPM
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

