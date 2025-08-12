Return-Path: <devicetree+bounces-203565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BEFB21DCD
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D42FB3B6A67
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 05:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4917926A0EB;
	Tue, 12 Aug 2025 05:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eiG/uEgG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9AC32580CF
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754978198; cv=none; b=Zu2HHa+YgusDEYibvwGSCc+2MquDFVdC0rW/VVdrGYClqhRYebVeztonlliPZBEuUExF2tNGQxSpoEQAzKPtg+LTUol685fXkTbKQ+AAkLKsl90cHi1ozdjCTJEsm7em81+/8kBxf4Kl1AYr52mSdYVvvnbiZHiHob8iQiVg0No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754978198; c=relaxed/simple;
	bh=N/kGy5+Rvl5NkLVtYUZMJPPcbHTjJ6Zdxnfsjdb3SsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uB/ro8aanfmFO5YhjpeODrT3Hln50v7qEMgOEycK8shvxy2J+EvLf5d4q06dZPGSXaFRthi8MMOnI1FCykSLadacDyYNp9x2wXt6D2dfQ8AffyupllTDP1s6Mz8I5WI5+W+BbpjTiOAn+J0m1VayGc9ISsebX0CvP908OR/GWp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eiG/uEgG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5Xo6V025283
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:56:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iO3FGVGfT/Y62Gvgar24D6JfUYtCte/97RHmCrhAXvc=; b=eiG/uEgGVyrbsO3+
	Cv1XZ9Mer3nCiMBO/p61JD6OuBveJMJ4+tj09BN98MHk7OvIHz74bVLWgv5tjNMs
	O5mgMe00qPMNNvVxFvilcWxg5/XThXGzlcfP+DCKRF87Ec+Rtnv72479019NeY5V
	+x3vUhob012fGcMD5ucywKYf2X4smkpgWPC0XlNQO7BuFxc++DrysRWXnU93Hg1x
	Mboc7E1YoDLlGKqr2iQkE5f92WFOyuRwQ1+b/+bxFdNK8FFv4PhQRqkzVztsnyr9
	RaISbD+Enz2ytDG9IKRmWL/KFcBImLVPiGz92y5SToTOjTIKvoEq1hSH2QlYp9FA
	GXw48Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj46yt0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 05:56:36 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31ea14cc097so4881555a91.3
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754978195; x=1755582995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iO3FGVGfT/Y62Gvgar24D6JfUYtCte/97RHmCrhAXvc=;
        b=bNFij4GXi5RE2BuxRvjXc6dgQ7sX1II9oHxMWIEcjAXkAiErPeAZF4RQXtKRYlbcv5
         D619PfDkyhF2TbG1C4t/TfnekWPxqS8C+N/BNsqz2gnX+8QlIIcEKiSnZd1de7FMSVD2
         g2w8vL7u2F+0MtqyTnrvjWtSUHsSgYNw72xUoYneaeg8ETNuCRCGs7HofKwNHBOKXhjN
         9DK1jFtsj0YOsa48flTVkfloeFkULnX8t3HJ5BYvNXHnieYefraUDsM+i+xq/Hyt7Tav
         0TyxUd+Kv82w9AeulSRX4v2KL1kgkBA5Y3mjZRMVoCDMXFvGn9B/Q0OJcMwS/J7XWhD8
         ijSw==
X-Forwarded-Encrypted: i=1; AJvYcCU1Ao8vhKSOZ2qWqsbvjKmpAPT4R4oKQf8sG4Qd10xOUsfaSIlMQ+mdfMvmMqLQ+JJcVvj6YYbTZ8rz@vger.kernel.org
X-Gm-Message-State: AOJu0YyBqgPThHb80ignLlHsopGb6d58uuVE7esvA6vhaBzZE+F8+Tl7
	XB9TJCYw1vplkK9oblUSnUwe30guScuwG1Zbu8u3/ECKF1wZbQecVul/SlXJ7g948dIy4DvO/hr
	st7Rc0mSG26Hx8Z8rDr0m42Zb1nSwOGimNJwZpHea0ZJWmy4ulQ0Rl1FjlBDyn8cz
X-Gm-Gg: ASbGnct0PCZ6YYlStFC/BtA619lQHkep+dhApt+H4TCgJigdtIQblS7idNm7dVtsEgw
	haT9UWTf6RB4o0kMB7sId+Ov6yQbblcWftp85PkuiIXA99s2vE/RmpkgOwi0UfYMAb2PJj623YJ
	FNhUmcXEHAaBdmUXZlJ7/DxCDDN+hNIHgAgSmM4u4EzOdut3L82e5dwNl1dp4g9Wy79bs3uaucE
	ohk0Ud58fRKea0BoKjskf3UjFxzv6rGIrL0FkWaptDLpNLVrmCYN0cXQPClKocDiyt+66niyma6
	7fP+bNG3D6shX8ZxWFnu2s0SC37ELM8yJo1NCQ6ha8k2L1zKABAsacCqodyzBDGs8IDp7u4=
X-Received: by 2002:a17:903:1c2:b0:236:6fbb:a5f3 with SMTP id d9443c01a7336-242fc390846mr36339075ad.40.1754978195086;
        Mon, 11 Aug 2025 22:56:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvQs0243cIKK62HPDyRoRpP+MCHl59jbXme4sVvLLXF1a/UdtW7iKiK6yuH3frFPHTDJLThw==
X-Received: by 2002:a17:903:1c2:b0:236:6fbb:a5f3 with SMTP id d9443c01a7336-242fc390846mr36338665ad.40.1754978194654;
        Mon, 11 Aug 2025 22:56:34 -0700 (PDT)
Received: from [10.206.107.125] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8975cf9sm292027175ad.110.2025.08.11.22.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 22:56:34 -0700 (PDT)
Message-ID: <881fe12b-b2b1-4135-b0e8-f8222293871d@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 11:26:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/5] arm64: dts: qcom: sa8775p: add GDSP
 fastrpc-compute-cb nodes
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-3-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <20250716132836.1008119-3-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfX5MSlhiWx7AsD
 xkIvpLXqWfBy9xEmh1s4xv/kdkoJuj2IIw6I2P7tMPC/sEyQ0wjBvTP/7wIFdjkSCgMW2hO2sPy
 WM5V09zP/I2HHgN+FwcRCqLp/PkvR024aIizjPCCT2qu893VCd7yAbiYTCz7hFZoP9KvJ8OQz0F
 F3RRAgzcvvxL0nt93QhKhBm9s1WzgmkXF1j9tIjsgrRGcOxfBuwkH9rBzsoJ6k8n8NZvZVa0pyr
 5tws8bs3ghZlFWDb3M2fdYUex45obx+ZnmqxyNs73xqM+Qt9P4K/Pn25Rpu8ZvBiNHJs9GQttnU
 69vO+NZwBJjrng3803vQ2jI/hJlOeyZKlWRZ7GrWBw7KWDI4MDP3cmTWbjvpxhY8zJSAOox88ED
 lgJJF9rU
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=689ad794 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=2Ucg9gNHWiGhv-ArepgA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: QI0KI9mbiBA3N-Uht6kiywnvxCQV2CQS
X-Proofpoint-GUID: QI0KI9mbiBA3N-Uht6kiywnvxCQV2CQS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027



On 7/16/2025 6:58 PM, Ling Xu wrote:
> Add GDSP0 and GDSP1 fastrpc compute-cb nodes for sa8775p SoC.
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 57 +++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index fed34717460f..5ebc058931ad 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -6080,6 +6080,34 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  
>  				label = "gpdsp0";
>  				qcom,remote-pid = <17>;
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "gdsp0";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@1 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <1>;
> +						iommus = <&apps_smmu 0x38a1 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@2 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <2>;
> +						iommus = <&apps_smmu 0x38a2 0x0>;
> +						dma-coherent;
> +					};
> +					compute-cb@3 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <3>;
> +						iommus = <&apps_smmu 0x38a3 0x0>;
> +						dma-coherent;
> +					};
> +				};
>  			};
>  		};
>  
> @@ -6123,6 +6151,35 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  
>  				label = "gpdsp1";
>  				qcom,remote-pid = <18>;
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "gdsp1";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@1 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <1>;
> +						iommus = <&apps_smmu 0x38c1 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@2 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <2>;
> +						iommus = <&apps_smmu 0x38c2 0x0>;
> +						dma-coherent;
> +					};
> +
> +					compute-cb@3 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <3>;
> +						iommus = <&apps_smmu 0x38c3 0x0>;
> +						dma-coherent;
> +					};
> +				};
>  			};

You might have to rebase this change onto lemans.dtsi

>  		};
>  


